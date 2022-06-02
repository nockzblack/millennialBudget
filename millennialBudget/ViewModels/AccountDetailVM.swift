//
//  AccountDetailVM.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import Foundation

final class AccountDetailVM: ObservableObject  {
    var account: Account
    
    init(acc: Account){
        self.account = acc
    }
    
    func getTransactionsByDate() -> [Transaction] {
        var transactions = [Transaction]()
        transactions.append(contentsOf: account.incomes)
        transactions.append(contentsOf: account.expenses)
        let sortedTrans = transactions.sorted {$0.date > $1.date }
        
        return sortedTrans
    
    }
}
