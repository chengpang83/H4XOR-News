//
//  DetailView.swift
//  H4XOR News
//
//  Created by Cheng Pang on 10/2/20.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlstring: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

