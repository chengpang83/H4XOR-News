//
//  ContentView.swift
//  H4XOR News
//
//  Created by Cheng Pang on 10/2/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) {post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })

            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







