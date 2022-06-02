//
//  ContentView.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 20/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Accounts")
                .font( .system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Accounts")
                }
            
            Text("Income")
                .font( .system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Accounts")
                }
            Text("Expense")
                .font( .system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "bag.badge.plus")
                    Text("")
                }
        }
        .accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
