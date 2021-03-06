//
//  AccountDetailView.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import SwiftUI

struct AccountDetailView: View {
    
    @ObservedObject var viewModel: AccountDetailVM
    @State var showTransactionView = false
    @State var result:Transaction?
    
    
    func updateTransactions() {
        if let trans = result {
            viewModel.addTransaction(trans: trans)
            result = nil
            viewModel.getTransactionsByDate()
        }   
    }
    
    var body: some View {
        VStack{
            List {
                Section(header: Text("Last Transactions")) {
                    ForEach(viewModel.transactions ?? [Transaction]()) { trans in
                        AccountDetailRow(trans: trans)
                    }
                }
            }
            .listStyle(.plain)
            .toolbar {
                Button {
                    showTransactionView.toggle()
                } label: {
                    Image(systemName: "plus").imageScale(.large)
                }
            }
            .navigationTitle(viewModel.account.name)
        
        }
        .sheet(isPresented: $showTransactionView) {
            updateTransactions()
        } content: {
            TransactionView(acountName: viewModel.account.name, transaction: $result)
        }
    }
}


struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView(viewModel: AccountDetailVM(acount: AccountModel.createDummyAccount()))
    }
}
 
