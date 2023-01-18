//
//  ContentView.swift
//  iExpense
//
//  Created by Denny Arfansyah on 17/01/23.
//

import SwiftUI

class User: ObservableObject {
    @Published var firsName = ""
    @Published var lastName = ""
}

struct ContentView: View {
    @StateObject private var user = User()
    
    var body: some View {
        VStack {
            Text("Hallo, \(user.firsName) \(user.lastName)")
            
            TextField("First Name", text: $user.firsName)
            TextField("Last Name", text: $user.lastName)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
