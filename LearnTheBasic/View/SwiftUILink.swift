//
//  SwiftUILink.swift
//  LearnTheBasic
//
//  Created by MacBook Pro on 05/04/24.
//

import SwiftUI


struct SwiftUILink: View {
    @State private var showWebView = false
    
    var body: some View {
        VStack {
            // Cara pertama
            let url = URL(string: "https://hidayatabisena.com")
            
            Link("Personal website", destination: url!)
            
            
            // Cara kedua
            Link(destination: url!) {
                HStack {
                    Image(systemName: "applelogo")
                    Text("Sign in with apple")
                }
                .frame(width: 250, height: 70)
                .foregroundStyle(.white)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            // Cara Ketiga
                Button {
                    showWebView = true
                } label: {
                    Text("Show personal web")
                }
                .fullScreenCover(isPresented: $showWebView, content: {
                    WebView(url: url!)
                })
            }
    }
}

#Preview {
    SwiftUILink()
}
