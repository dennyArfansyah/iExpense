//
//  DeletingView.swift
//  iExpense
//
//  Created by Denny Arfansyah on 17/01/23.
//

import SwiftUI

struct DeletingView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Rows: \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("On Delete")
            .toolbar {
                EditButton()
            }
        }
        
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}


struct DeletingView_Previews: PreviewProvider {
    static var previews: some View {
        DeletingView()
    }
}
