//
//  ContentView.swift
//  Shared
//
//  Created by Dipika Chadha on 7/9/21.
//

import SwiftUI

struct ContentView: View {
    // The `some` here constraints that
    // it is a single type of View, not
    // any generic View
    var body: some View {
        NavigationView {
            Form {
                Text("Hello, world!")
            }
            .navigationBarTitle("SwiftUI", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
