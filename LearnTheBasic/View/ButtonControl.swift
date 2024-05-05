//
//  ButtonControl.swift
//  LearnTheBasic
//
//  Created by Dicky Fahriza on 05/04/24.
//

import SwiftUI

struct ButtonControl: View {
    var body: some View {
        VStack(spacing: 24) {
            
            // 1. Standard button
            Button {
                print("Standard button tapped")
            } label: {
                Text("Standard Button")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            
            // 2. Role button
            Button(role: .destructive) {
                print("Destructive button tapped")
            } label: {
                Text("Destructive Button")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            // 3. Custom button
            Button {
                print("Hello ios developer button tapped")
            } label: {
                Text("Hello iOS Developer")
            }
            .padding()
            .background(.purple)
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .clipShape(Capsule())
            
            
            // 4. Custom button part 2
            Button {
                
            } label: {
                Text("Magnificent Button")
            }
            .fontWeight(.bold)
            .font(.title)
            .padding()
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            
            .foregroundStyle(.white)
            .padding()
            .overlay{
                RoundedRectangle(cornerRadius: 40)
                    .stroke(.purple,lineWidth: 5)
            }
            
            
            // 5. Image button
            Button {
                
            } label: {
                Image(systemName: "power.circle.fill")
                    .padding()
                    .background(.green)
                    .clipShape(Circle())
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            
            // 6. Button Linear Gradient
            Button {
                
            } label: {
                Label("Add stock", systemImage: "flame")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .padding()
            .foregroundStyle(.white)
            .background(
                LinearGradient(colors: [.green, .mint], startPoint: .trailing, endPoint: .leading)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
        }
        .padding()
    }
}

#Preview {
    ButtonControl()
}
