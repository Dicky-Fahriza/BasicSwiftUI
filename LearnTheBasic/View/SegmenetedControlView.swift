//
//  SegmenetedControlView.swift
//  LearnTheBasic
//
//  Created by MacBook Pro on 05/04/24.
//

import SwiftUI

struct SegmenetedControlView: View {
    @State private var selectedFlavor:
    Flavor = .chocolate
    
    var body: some View {
        NavigationStack {
            List {
                Picker("Select your flavor", selection: $selectedFlavor) { Text("chocolate")
                        .tag(Flavor .chocolate)
                    
                     Text("vanilla")
                            .tag(Flavor .vanilla)
                    
                    Text("Strawberry")
                           .tag(Flavor .strawberry)

                }
                .pickerStyle(.segmented)
                
                Text("Selecting: \(selectedFlavor)")
            }
        }
    }
}

#Preview {
    SegmenetedControlView()
}

enum Flavor: String, CaseIterable {
    case chocolate, vanilla, strawberry
    var id: Self {
        self
    }
}
