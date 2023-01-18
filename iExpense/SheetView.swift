//
//  SheetView.swift
//  iExpense
//
//  Created by Denny Arfansyah on 17/01/23.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.isEnabled) var isEnable
    
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct SheetView: View {
    @State private var showingSheet = false
    var body: some View {
        Button("Second View") {
            showingSheet.toggle()
        }.sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
