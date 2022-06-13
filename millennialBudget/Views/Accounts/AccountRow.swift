//
//  AccountRow.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 26/05/22.
//

import SwiftUI

struct AccountRow: View {
    
    var account: AccountModel
    
    var body: some View {
        HStack {
            Image(systemName: account.iconName)
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 5) {
                let formatedBalance = NumberFormatter.localizedString(from: NSNumber(value: account.balance), number: .currency)
                Text(account.name)
                    .font(.system(size: 20, weight: .medium, design: .monospaced))
                Text(formatedBalance)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .foregroundColor(.blue)
                
            }.padding(.leading, 10)
            
            Spacer()
            
        }.padding(5)
    }
}

struct AccountRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountRow(account: AccountModel(name: "Inversiones", iconName: "wallet.pass", balance: 1430.00))
    }
}
