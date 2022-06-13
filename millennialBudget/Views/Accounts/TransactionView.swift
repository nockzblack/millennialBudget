//
//  TransactionView.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 13/06/22.
//

import SwiftUI

struct TransactionView: View {
    
    var acountName = "Wallet"
    @State var amount = ""
    @State var desc = ""
    @State var category = ""
    @State var selectedDate = Date()
    @State var isExpense = true
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
            VStack {
                HStack {
                    Button {
                        print("Returning to view")
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Cancel")
                    }
                    .padding(.leading)
                    .padding(.top)
                    
                    Spacer()
                    
                    Button {
                        print("Saving and returning to view")
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Save")
                    }
                    .padding(.trailing)
                    .padding(.top)
                }
                
                Toggle("Expense / Income", isOn: $isExpense)
                    .font(.system(size: 12, weight: .semibold, design: .default))
                    .padding()
                
                if (isExpense) {
                    Text("Expense").font(.system(.title))
                } else {
                    Text("Income").font(.system(.title))
                }
                
                Form {
                    Text("Account: \(acountName)")
                    TextField("0.00", text: $amount)
                        .keyboardType(.decimalPad)
                    TextField("Descripción", text: $desc)
                    TextField("Category:", text: $category)
                    HStack {
                        Image(systemName: "calendar")
                        DatePicker("", selection: $selectedDate, displayedComponents: .date)
                    }
                    
                }
            }
        }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
    }
}
