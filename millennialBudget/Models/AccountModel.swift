//
//  AccountModel.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 24/05/22.
//

import Foundation

struct Account: Identifiable {
    let id = UUID().uuidString
    let name: String
    let iconName: String
    var balance: Double = 0.0
    var incomes: [Income]
    var expenses: [Expense]
    
    init(name: String, iconName: String, balance: Double){
        self.name = name
        self.iconName = iconName
        self.balance = balance
        self.expenses = [Expense]()
        self.incomes = [Income]()
    }
    
    
}
