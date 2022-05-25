//
//  Accounts.swift
//  millennialBudget
//
//  Created by user216717 on 5/25/22.
//

import SwiftUI
import SymbolPicker

struct Accounts: View {
    var accountName: String
    @State private var iconPickerPresented = false
    @State private var icon = "pencil"

    var body: some View {
        VStack{
            Text("Create New Account")
            Spacer()
            
            HStack {
                Text("Name")
                TextField("Name", text: .constant(accountName)).overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.blue, lineWidth: 2)
                )
            }
            
            Button(action:{
                iconPickerPresented = true
            }, label:{
                Text("Select Icon")
            })
            
            
            HStack {
                Image(systemName: icon).resizable().frame(width: 25, height: 25)
    
            }.sheet(isPresented: $iconPickerPresented) {
                SymbolPicker(symbol: $icon)
            }
            
            
            Spacer()
            
            Button(action:{
                // create account
            }, label:{
                Text("Create Account")
            })
        }.padding(20)
    }
}

struct Accounts_Previews: PreviewProvider {
    static var previews: some View {
        Accounts(accountName: "my wallet")
    }
}
