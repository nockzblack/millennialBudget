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
            Image(systemName: trans.category.iconName)
                .resizable()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading, spacing: 5) {
                Text(trans.desc)
                    .font(.system(size: 22, weight: .bold, design: .monospaced))
                Text(trans.date.formatted())
                
            }.padding(.leading, 10)
            
            let formatedBalance = NumberFormatter.localizedString(from: NSNumber(value: trans.ammount), number: .currency)
            
            Text(formatedBalance)
                .font(.system(.body, design: .rounded))
                .padding(.leading)
            
        }
    }
    
}



struct AccountDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailRow(trans: Transaction(isIncome: true, ammount: 15000, desc: "Salario", date: Date(), category: IncomeCategoris[0]))
    }
}
