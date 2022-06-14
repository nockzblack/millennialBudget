//
//  Budget.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 14/06/22.
//

import Foundation
import SwiftUI

struct Budget:Identifiable {
 
    let id: String = UUID().uuidString
    var expensePlanned: [BudgetCategory]
    var incomePlanned: [BudgetCategory]
    
    init() {
        incomePlanned = [BudgetCategory]()
        for incomeCat in IncomeCategories {
            incomePlanned.append(BudgetCategory(category: incomeCat))
        }
        
        expensePlanned = [BudgetCategory]()
        for expenseCat in ExpenseCategories {
            expensePlanned.append(BudgetCategory(category: expenseCat))
        }
        
    }
    
}
