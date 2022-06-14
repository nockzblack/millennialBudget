//
//  CategoryBudgetRow.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 14/06/22.
//

import SwiftUI

struct CategoryBudgetRow: View {
    
    
    @State var amount = ""
    
    var body: some View {
        HStack {
            Image(systemName: "questionmark.circle")
                .resizable()
                .frame(width: 50, height: 50).padding(5)
            
            Text("Food: ").font(.system(size: 18, weight: .bold, design: .rounded)).padding(5)
            
            TextField("0.00", text: $amount)
                .keyboardType(.decimalPad)
                .font(.system(size: 18))
                .padding(5)
            
        }.border(.gray)
    }
}

struct CategoryBudgetRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBudgetRow()
    }
}
