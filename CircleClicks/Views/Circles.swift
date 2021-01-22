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
                    .onLongPressGesture {
                        if self.color == Color.blue {
                            self.color = Color.red
                        } else {
                            self.color = Color.blue
                        }
                    }
            )
    }
}
