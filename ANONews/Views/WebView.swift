//
//  WebView.swift
//  ANONews
//
//  Created by Fernando dos Santos Motta on 25/07/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeString = urlString else { return }
        guard let url = URL(string: safeString) else { return }
        
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
