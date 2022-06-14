//
//  BudgetView.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 14/06/22.
//

import SwiftUI

struct CreateBudgetView: View {
    
    
    var body: some View {
        
        
        VStack() {
            Group {
                Text("Expense Categories")
                /*
                List(selection: ExpenseCategories) { catgeory in
                    CategoryBudgetRow()
                    
                }
                 */
                
            }
            
            Group {
                Text("Income Categories")
            }
        }
        
    }
}

struct BudgetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateBudgetView()
    }
}
