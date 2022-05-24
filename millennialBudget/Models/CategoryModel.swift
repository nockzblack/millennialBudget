//
//  CategoryModel.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 24/05/22.
//

import Foundation

struct Category: Identifiable {
    
    let id = UUID().uuidString
    let name: String
    let iconName: String
}


let ExpenseCategories = [Category(name:"Renta", iconName:"House"), Category(name:"Internet", iconName:"Wifi"),
                         Category(name:"TakeOut", iconName:"Motorbike"), Category(name:"Restaurant", iconName:"Forks")]


let IncomeCategoris = [ Category(name:"Sueldo", iconName:"Check"), Category(name:"Dividendos", iconName:"DollarSing"), Category(name:"Salario", iconName:"Cash")]
