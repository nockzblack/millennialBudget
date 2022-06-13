//
//  AccountModel.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 24/05/22.
//

import Foundation

struct AccountModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let iconName: String
    var balance: Double = 0.0
    var incomes: [Transaction]
    var expenses: [Transaction]
    
    init(name: String, iconName: String, balance: Double){
        self.name = name
        self.iconName = iconName
        self.balance = balance
        self.expenses = [Transaction]()
        self.incomes = [Transaction]()
    }
    
    
    static func createDummyAccount() -> AccountModel {
        var acc = AccountModel(name: "Wallet", iconName: "wallet.pass", balance: 200.50)
        acc.expenses.append(Transaction(isIncome: false, ammount: 400.50, desc: "Tacos Don Miguelon", date: Date(), category: ExpenseCategories[3]))
        acc.incomes.append(Transaction(isIncome: true, ammount: 80900, desc: "Sueldo Mensual", date: Date(), category: IncomeCategories[0]))
        return acc
    }
    
}
