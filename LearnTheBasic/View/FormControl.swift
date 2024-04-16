//
//  FornControl.swift
//  LearnTheBasic
//
//  Created by MacBook Pro on 05/04/24.
//

import SwiftUI

struct FormControl: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""

    
    var body: some View {
        Form {
            Section {
                TextField("First Name", text: $firstName)
                
                TextField("Last Name", text: $lastName)
            } header: {

            } footer: {
                Text("Please fill text field")
            }
        }
    }
}

#Preview {
    FormControl()
}
