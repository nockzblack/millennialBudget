//
//  AccountDetailRow.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import SwiftUI

struct AccountDetailRow: View {
    
    var trans: Transaction
    
    
    var body: some View {
        
        HStack {
            VStack(alignment: .center) {
            Image(systemName: trans.category.iconName)
                .resizable()
                .frame(width: 50, height: 50)
                .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            VStack(alignment: .center, spacing: 5) {
                Text(trans.desc)
                    .font(.system(size: 15, weight: .medium, design: .monospaced))
                Text(trans.date.formatted())
                    .font(.system(size: 12, weight: .thin, design: .rounded))
                
            }
            
            Spacer()
            
            let formatedBalance = NumberFormatter.localizedString(from: NSNumber(value: trans.ammount), number: .currency)
            
            Text(formatedBalance)
                .font(.system(size: 15, weight: .bold, design: .rounded))
                .multilineTextAlignment(.trailing)
                .foregroundColor(trans.isIncome ? Color.green : Color.red)
                
          
        }
        .frame(maxWidth: .infinity)
        .padding(5)
    }
    
}



struct AccountDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailRow(trans: Transaction(isIncome: true, ammount: 15000, desc: "Salario", date: Date(), category: IncomeCategories[0]))

    }
}
