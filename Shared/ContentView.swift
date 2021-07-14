//
//  ContentView.swift
//  Shared
//
//  Created by Dipika Chadha on 7/9/21.
//

import SwiftUI

struct ContentView: View {
    // structs can be constants, so having
    // mutable properties is a no go. The workaround
    // is to add @State wrapper for simple properties.
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"

    // The `some` here constraints that
    // it is a single type of View, not
    // any generic View
    var body: some View {
        NavigationView {
            Form {
                Text("Hello, world!")
                
                Button("Tap Count: \(tapCount)") {
                    self.tapCount += 1
                }
                
                // The $ sign suggests that it's a
                // 2-way binding. Values will be read
                // from and updated into the same
                // variable upon edits.
                TextField("Enter your name", text: $name)
                Text("Your name is \(name)")
                
                // Now for generating views in loops
                // Use ForEach in this Picker:
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(0 ..< students.count) {
                        Text(self.students[$0])
                    }
                }
                Text("You chose: \(selectedStudent)")
                
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
