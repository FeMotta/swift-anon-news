//
//  DetailView.swift
//  ANONews
//
//  Created by Fernando dos Santos Motta on 25/07/22.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}




struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://apple.com")
    }
}
