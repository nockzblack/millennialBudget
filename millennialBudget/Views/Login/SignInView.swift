//
//  SignInView.swift
//  millennialBudget
//
//  Created by Santiago Aragon on 15/06/22.
//

import SwiftUI
import FirebaseAuth

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                VStack(alignment: .leading){
                    Text("Email")
                    TextField("Email", text: $email)
                        .disableAutocorrection(true)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    Text("Password")
                    SecureField("Password", text: $password)
                }
                
                Button("Sign In"){
                    print("Sign In")
                    Auth.auth().createUser(
                        withEmail: "santiagoas77@gmail.com",
                        password: "123456")
                }
                .buttonBorderShape(.capsule)
                .buttonStyle(.borderedProminent)
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: 400.0)
            .textFieldStyle(.roundedBorder)
            
            Spacer()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
