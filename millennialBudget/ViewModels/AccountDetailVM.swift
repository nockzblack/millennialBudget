//
//  AccountDetailVM.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import Foundation

final class AccountDetailVM: ObservableObject  {
    var account: AccountModel
    
    var transactions: [Transaction]?
    
    init(acount: AccountModel){
        self.account = acount
        getTransactionsByDate()
    }
    
    func getTransactionsByDate() {
        var transactions = [Transaction]()
        transactions.append(contentsOf: account.incomes)
        transactions.append(contentsOf: account.expenses)
        let sortedTrans = transactions.sorted {$0.date > $1.date }
        
        self.transactions = sortedTrans
    }
    
    func addTransaction(trans: Transaction) {
        if trans.isIncome {
            addIncome(trans: trans)
        } else {
            addExpense(trans: trans)
        }
    }
    
    private func addIncome(trans: Transaction) {
        account.incomes.append(trans)
    }
    
    private func addExpense(trans: Transaction) {
        account.expenses.append(trans)
    }
    
    
}
