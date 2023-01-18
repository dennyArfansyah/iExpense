//
//  AddItem.swift
//  iExpense
//
//  Created by Denny Arfansyah on 17/01/23.
//

import SwiftUI

struct AddItem: View {
    @ObservedObject var expenses: Expenses
    @Environment(\.dismiss) var dimiss
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    
    let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Types", selection: $type) {
                    ForEach(types, id: \.self){
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add New Expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dimiss()
                }
            }
        }
    }
}

struct AddItem_Previews: PreviewProvider {
    static var previews: some View {
        AddItem(expenses: Expenses())
    }
}
