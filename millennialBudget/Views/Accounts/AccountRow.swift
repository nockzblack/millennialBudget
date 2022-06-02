//
//  AccountRow.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 26/05/22.
//

import SwiftUI

struct AccountRow: View {
    
    var account: Account
    
    var body: some View {
        HStack {
            Image(systemName: account.iconName)
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 5) {
                let formatedBalance = NumberFormatter.localizedString(from: NSNumber(value: account.balance), number: .currency)
                Text(account.name)
                    .font(.system(size: 22, weight: .bold, design: .monospaced))
                Text(formatedBalance)
                    .font(.system(.body, design: .rounded))
                
            }.padding(.leading, 10)
            
            Spacer()
            
        }
    }
}

struct AccountRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountRow(account: Account(name: "Inversiones", iconName: "wallet.pass", balance: 1430.00))
    }
}