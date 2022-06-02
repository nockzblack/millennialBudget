//
//  TransactionProtocol.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 02/06/22.
//

import Foundation


protocol Transaction {
    var id: UUID { get set }
    var account: Account { get set }
    var ammount: Double { get set }
    var description: String { get set }
    var date: Date { get set }
    var category: Category { get set }

}
