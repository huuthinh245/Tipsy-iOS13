//
//  WebView.swift
//  H4X0R News
//
//  Created by thinh on 11/23/20.
//  Copyright © 2020 thinh. All rights reserved.
//

import SwiftUI
import WebKit
struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
           if let safeUrl = urlString {
               if let url = URL(string: safeUrl) {
                   uiView.load(URLRequest(url: url))
               }
           }
       }
}
