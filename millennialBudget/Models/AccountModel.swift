//
//  AccountModel.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 24/05/22.
//

import Foundation

struct Account: Identifiable {
    let id = UUID().uuidString
    let name: String
    let iconName: String
    let openingBalance: Double = 0.0
    
}
