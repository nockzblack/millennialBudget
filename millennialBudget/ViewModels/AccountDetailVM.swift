//
//  AccountDetailVM.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import Foundation

final class AccountDetailVM: ObservableObject  {
    var account: Account
    
    init(acount: Account){
        self.account = acount
    }
    
    func getTransactionsByDate() -> [Transaction] {
        var transactions = [Transaction]()
        transactions.append(contentsOf: account.incomes)
        transactions.append(contentsOf: account.expenses)
        let sortedTrans = transactions.sorted {$0.date > $1.date }
        
        return sortedTrans
    
    }
    
    static func createAccountDetailVMWithDummyData() -> AccountDetailVM {
        
        var acc = AccountsVM.createAccountsVMWithDummyData().accounts[0]
        
        acc.expenses.append(Transaction(isIncome: false, ammount: 400.50, desc: "Tacos Don Miguelon", date: Date(), category: ExpenseCategories[3]))
        acc.incomes.append(Transaction(isIncome: true, ammount: 80900, desc: "Sueldo Mensual", date: Date(), category: IncomeCategoris[0]))
        
        let accDetailVM = AccountDetailVM(acount: acc)
        
        return accDetailVM
        

    }
}
