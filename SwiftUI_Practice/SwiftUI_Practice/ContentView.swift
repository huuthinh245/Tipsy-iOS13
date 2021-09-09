//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by thinh on 11/17/20.
//  Copyright © 2020 thinh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hello, World!")
                TextFieldInfo(phone: "+84 362462070", iconName: "phone.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone X")
    }
}

struct TextFieldInfo: View {
    let phone: String
    let iconName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(
                HStack {
                    Image(systemName: iconName).foregroundColor(.green)
                    Text(phone)
                }
            ).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}
