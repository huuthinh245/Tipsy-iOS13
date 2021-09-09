//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by thinh on 11/17/20.
//  Copyright © 2020 thinh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var n: Int = 1
        @State private var n1: Int = 6
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    ExtractedView(n:n)
                    ExtractedView(n:n1)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    self.n = Int.random(in: 1...6)
                    self.n1 = Int.random(in: 1...6)
                }) {
                    Text("Roll").foregroundColor(.red)
                        .fontWeight(.heavy)
                        .font(.system(size: 50.0))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone Xs Max")
    }
}

struct ExtractedView: View {
    var n:Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit)
    }
}
