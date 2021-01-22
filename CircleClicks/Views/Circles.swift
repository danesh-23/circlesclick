//
//  Circles.swift
//  CircleClicks
//
//  Created by Danesh Rajasolan on 2021-01-22.
//

import SwiftUI

struct Circles: View {
    
    var text: String
    @Binding var width: CGFloat
    @Binding var height: CGFloat
    @State var color: Color = Color.blue
    
    var body: some View {
        Text(text)
            .multilineTextAlignment(.center)
            .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(color)
                    .frame(width: width, height: height)
                    .onTapGesture(count: 3, perform: {
                        self.color = Color.blue
                    })
                    .onLongPressGesture {
                        self.color = Color(red: .random(), green: .random(), blue: .random())
                    }
            )
    }
}

extension Double {
    static func random() -> Double {
        return Double(arc4random()) / Double(UInt32.max)
    }
}
