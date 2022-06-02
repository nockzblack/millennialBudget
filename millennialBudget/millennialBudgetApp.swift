//
//  millennialBudgetApp.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 20/04/22.
//

import SwiftUI

@main
struct millennialBudgetApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(accountsViewModel: AccountsVM.createAccountsVMWithDummyData())
        }
    }
}
