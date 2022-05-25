
import Foundation

class AccountVM  {
    var accounts: [Account]
    
    init(){
        accounts = []
    }
    
    func createAccount(account: Account){
        accounts.append(account)
    }
    
    func getAccountsByName(name: String) -> Account?{
        if let account = accounts.first(where: {$0.name == name}) {
           return account
        } else {
           return nil
        }
    }
    
    func createAccount(){
        accounts.append(Account())
    }
    
}
