//
//  ExpenseModel.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 24/05/22.
//

import Foundation

struct Expense: Identifiable, Transaction {
    let id = UUID().uuidString
    var account: Account
    var ammount: Double
    var description: String
    var date: Date
    var category: Category
}
