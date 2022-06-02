//
//  Accounts.swift
//  millennialBudget
//
//  Created by user216717 on 5/25/22.
//

import SwiftUI

struct AccountsView: View {
    
    @ObservedObject var viewModel: AccountsVM

    var body: some View {
        List(viewModel.accounts) { acc in
            AccountRow(account: acc)
            
        }
    }
}

struct Accounts_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView(viewModel: AccountsVM.createAccountsVMWithDummyData())
    }
}