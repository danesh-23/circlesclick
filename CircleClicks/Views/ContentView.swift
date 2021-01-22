//
//  ContentView.swift
//  CircleClicks
//
//  Created by Danesh Rajasolan on 2021-01-22.
//

import SwiftUI

struct ContentView: View {
    
    @State var width1: CGFloat = 100
    @State var height1: CGFloat = 100
    @State var width2: CGFloat = 100
    @State var height2: CGFloat = 100
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
            Circles(text: "1", width: $width1, height: $height1)
                .onTapGesture {
                    self.firstCircleTapped()
                }
            
            Circles(text: "2", width: $width2, height: $height2)
                .onTapGesture {
                    self.secondCircleTapped()
                }
        }
    }
    
    private func firstCircleTapped() {
        if !self.isAreaPixelsSmaller() {
            self.width2 /= 2
            self.height2 /= 2
            self.width1 *= 2
            self.height1 *= 2
            
        } else {
            self.restoreOriginalSize()
        }
    }
    
    private func secondCircleTapped() {
        if !self.isAreaPixelsSmaller() {
            self.width1 /= 2
            self.height1 /= 2
            self.width2 *= 2
            self.height2 *= 2
        } else {
            self.restoreOriginalSize()
        }
    }
    
    private func isAreaPixelsSmaller() -> Bool {
        if pow(self.width1 / 2, 2) * CGFloat.pi < 5 || pow(self.width2 / 2, 2) * CGFloat.pi < 5 {
            return true
        }
        return false
    }
    
    private func restoreOriginalSize() {
        self.width1 = 100
        self.height1 = 100
        self.width2 = 100
        self.height2 = 100
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
