//
//  ContentView.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 20/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var accountsViewModel: AccountsVM
    
    var body: some View {
        TabView {
            AccountsView(viewModel: accountsViewModel)
                .font( .system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Accounts")
                }
            
            AccountDetailView(viewModel: AccountDetailVM.createAccountDetailVMWithDummyData())
                .font( .system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Accounts")
                }
            Text("Expense")
                .font( .system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "bag.badge.plus")
                    Text("")
                }
        }
        .accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(accountsViewModel: AccountsVM.createAccountsVMWithDummyData())
    }
}
