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
                .frame(width: 40, height: 40)
            Text(account.name)
                .font(.system(.title, design: .rounded))
            Spacer()
            
        }
    }
}

struct AccountRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountRow(account: Account(name: "Wallet", iconName: "wallet.pass", balance: 430.00))
    }
}
