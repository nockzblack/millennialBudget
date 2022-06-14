//
//  BudgetCategory.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 14/06/22.
//

import Foundation

struct BudgetCategory {
    
    let category:Category
    var plannedAmount:Double
    var finalAmount: Double
    
    init(category: Category) {
        self.category = category
        plannedAmount = 0.0
        finalAmount = 0.0
    }
}
