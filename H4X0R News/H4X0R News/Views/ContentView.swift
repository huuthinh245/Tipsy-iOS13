//
//  ContentView.swift
//  H4X0R News
//
//  Created by thinh on 11/17/20.
//  Copyright © 2020 thinh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var network = NetworkManager()
    var body: some View {
        NavigationView {
            List(network.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R", displayMode: .large)
        }
        .onAppear {
            self.network.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone X")
    }
}
