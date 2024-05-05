//
//  ContainerStack.swift
//  LearnTheBasic
//
//  Created by Dicky Fahriza on 05/04/24.
//

import SwiftUI

struct ContainerStack: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue, .purple, .black], startPoint: .topLeading, endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack { // vertical stack
                Text("Hello IOS Developer")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Image(systemName: "applelogo")
                    .font(.system(size: 148))
                
                Spacer()
                
                HStack { // horizontal stack
                    Image(systemName: "lock.open.applewatch")
                    Text("Unlock your creativity")
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.light)
                .padding(.bottom, 24)
            }
            .foregroundStyle(.white)
            
        }
    }
}

#Preview {
    ContainerStack()
}
