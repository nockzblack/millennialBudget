//
//  AccountDetailView.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import SwiftUI

struct AccountDetailView: View {
    
    @ObservedObject var viewModel: AccountDetailVM
    
    var body: some View {
        VStack {
            
            Text("Acount: ")
            
            List {
                Section(header: Text("Last Transactions")) {
                    ForEach(viewModel.getTransactionsByDate()) { trans in
                        AccountDetailRow(trans: trans)
                    }
                }
            }
            .listStyle(.plain)
            
            
        
            
        
        }
    }
}

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView(viewModel: AccountDetailVM.createAccountDetailVMWithDummyData())
    }
}
