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


// MARK: DEFAULT CATEGORIES

// MARK: 10 Default Expenses
var ExpenseCategories = [
    Category(name:"Vivienda", iconName:"house"),
    Category(name:"Despensa", iconName:"cart.circle.fill"),
    Category(name:"Restaurantes", iconName:"fork.knife.circle.fill"),
    Category(name:"Transporte", iconName:"car.circle"),
    Category(name:"Vestimenta", iconName:"tshirt"),
    Category(name:"Entretenimiento", iconName:"logo.playstation"),
    Category(name:"Médicos", iconName:"staroflife.fill"),
    Category(name:"Deporte", iconName:"logo.playstation"),
    Category(name:"Vacaciones", iconName:"globe.americas"),
    Category(name:"Educación", iconName:"books.vertical.circle.fill")]


// MARK: Expenses

// MARK: Default Incomes

let IncomeCategories = [
    Category(name:"Sueldo", iconName:"dollarsign.circle.fill"),
    Category(name:"Intereses", iconName:"banknote"),
    Category(name:"Dividendos", iconName:"bitcoinsign.circle.fill"),
    Category(name:"Regalo", iconName:"giftcard.fill"),
    Category(name:"Salario", iconName:"laptopcomputer"),
    Category(name:"Alquiler", iconName:"building.fill"),
    Category(name:"Ventas", iconName:"bag.fill.badge.plus"),
    Category(name:"Bonificaciones", iconName:"plus.circle")]
