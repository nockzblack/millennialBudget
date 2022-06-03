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


let ExpenseCategories = [Category(name:"Renta", iconName:"house"), Category(name:"Internet", iconName:"Wifi"),
                         Category(name:"TakeOut", iconName:"Motorbike"), Category(name:"Restaurant", iconName:"Forks")]


let IncomeCategoris = [Category(name:"Sueldo", iconName:"rectangle.badge.checkmark"), Category(name:"Dividendos", iconName:"dollarsign.circle.fill"), Category(name:"Salario", iconName:"banknote")]
