
import Foundation

final class AccountsVM: ObservableObject  {
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
        accounts.append(Account(name: "Dummy", iconName: "questionmark.circle", balance: 0.0))
    }
    
    
    static func createAccountsVMWithDummyData() -> AccountsVM {
        let accounts = AccountsVM()
        
        accounts.createAccount(account: Account(name: "Wallet", iconName: "wallet.pass", balance: 200.50))
        accounts.createAccount(account: Account(name: "Trading", iconName: "arrow.up.arrow.down.circle", balance: 12002.10))
        accounts.createAccount(account: Account(name: "Investment", iconName: "arrow.up.circle", balance: 50678.21))
        
        
        return accounts
    }
    
}



