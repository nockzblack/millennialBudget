//
//  AccountDetailVM.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import Foundation

final class AccountDetailVM: ObservableObject  {
    var account: Account
    
    init(acc: Account){
        self.account = acc
    }
    
    func getTransactionsByDate() -> [Transaction] {
        
    }
    
    
    
}
