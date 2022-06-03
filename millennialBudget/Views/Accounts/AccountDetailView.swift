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
        VStack(alignment: .center, spacing: 10) {
            
            HStack {
                Text(viewModel.account.name)
                    .font(.system(size: 30, weight: .bold, design: .default))
            }
            
            
            List {
                Section(header: Text("Last Transactions")) {
                    ForEach(viewModel.getTransactionsByDate()) { trans in
                        AccountDetailRow(trans: trans)
                    }
                }
            }
            .listStyle(.plain)
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

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView(viewModel: AccountDetailVM.createAccountDetailVMWithDummyData())
    }
}
