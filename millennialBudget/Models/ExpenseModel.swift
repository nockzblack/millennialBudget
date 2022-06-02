//
//  ExpenseModel.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 24/05/22.
//

import Foundation

struct Expense: Identifiable, Transaction {
    
    let id = UUID().uuidString
    let account: Account
    let ammount: Double
    let description: String
    let date: Date
}
