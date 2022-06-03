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
            NavigationView {
                    List(viewModel.accounts) { acc in
                        NavigationLink {
                            AccountDetailView(viewModel: AccountDetailVM(acount:acc))
                        } label: {
                            AccountRow(account: acc)
                        }
                    }.listStyle(.inset)
                    .toolbar {
                        Button {
                            print("+")
                        } label: {
                            Image(systemName: "plus").imageScale(.large)
                        }

                    }
            }
    }
    
}

struct Accounts_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView(viewModel: AccountsVM.createAccountsVMWithDummyData())
    }
}
