//
//  TransactionModel.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import Foundation

struct Transaction: Identifiable {
    let id = UUID().uuidString
    let isIncome: Bool
    var ammount: Double
    var desc: String
    var date: Date
    var category: Category
    
}
