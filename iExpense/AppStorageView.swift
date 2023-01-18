//
//  AppStorageView.swift
//  iExpense
//
//  Created by Denny Arfansyah on 17/01/23.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
