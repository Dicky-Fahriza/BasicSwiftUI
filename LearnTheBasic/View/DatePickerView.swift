//
//  DatePicker.swift
//  LearnTheBasic
//
//  Created by Dicky Fahriza on 05/04/24.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            DatePicker(selection: $date, displayedComponents: [.date, .hourAndMinute]) {
                Text("Choose date")
            }
            
//            DatePicker("Choose Your date",  selection: $date, displayedComponent: [.date, .hourAndMinute])
//                .datePickerStyle(.compact)
        }
        .padding()
    }
}

#Preview {
    DatePickerView()
}
