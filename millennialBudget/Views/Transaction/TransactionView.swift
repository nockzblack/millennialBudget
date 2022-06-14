//
//  TransactionView.swift
//  millennialBudget
//
//  Created by Fernando's Mac on 13/06/22.
//

import SwiftUI

struct TransactionView: View {
    
    let acountName: String
    @Binding var transaction: Transaction?
    
    @State var amount = ""
    @State var desc = ""
    @State var category = ""
    @State var selectedDate = Date()
    @State var isIncome = false
    
    @Environment(\.presentationMode) var presentationMode
    
    func composeTransaction() {
        if let amountDouble = Double(amount) {
            let category = Category(name: category, iconName:"questionmark.circle")
            transaction = Transaction(isIncome: isIncome, ammount: amountDouble, desc: desc, date: selectedDate, category: category)
        }
        
    }
    
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
                        composeTransaction()
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Save")
                    }
                    .padding(.trailing)
                    .padding(.top)
                }
                
               
                    
                
                if (isIncome) {
                    Text("Income").font(.system(.title))
                } else {
                    Text("Expense").font(.system(.title))
                }
                
                Form {
                    Toggle("Expense / Income", isOn: $isIncome)
                        .font(.system(size: 18, weight: .semibold, design: .default))
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

/*
struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView(acountName: "Wallet",transaction: Binding<Transaction()?>)
    }
}
*/
