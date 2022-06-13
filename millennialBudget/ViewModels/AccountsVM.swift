
import Foundation

final class AccountsVM: ObservableObject  {
    var accounts: [AccountModel]
    
    init(){
        accounts = []
    }
    
    func addAccount(account: AccountModel){
        accounts.append(account)
    }
    
    func getAccountsByName(name: String) -> AccountModel?{
        if let account = accounts.first(where: {$0.name == name}) {
           return account
        } else {
           return nil
        }
    }
    
    func createAccount(){
        accounts.append(AccountModel(name: "NewAccount", iconName: "questionmark.circle", balance: 0.0))
    }
    
    
    static func createAccountsVMWithDummyData() -> AccountsVM {
        let accVM = AccountsVM()
        
        var acc = AccountModel(name: "Wallet", iconName: "wallet.pass", balance: 200.50)
        acc.expenses.append(Transaction(isIncome: false, ammount: 400.50, desc: "Tacos Don Miguelon", date: Date(), category: ExpenseCategories[3]))
        acc.incomes.append(Transaction(isIncome: true, ammount: 80900, desc: "Sueldo Mensual", date: Date(), category: IncomeCategories[0]))
        accVM.addAccount(account: acc)
        
        accVM.addAccount(account: AccountModel(name: "Trading", iconName: "arrow.up.arrow.down.circle", balance: 12002.10))
        accVM.addAccount(account: AccountModel(name: "Investment", iconName: "arrow.up.circle", balance: 50678.21))
        accVM.addAccount(account: AccountModel(name: "Gift", iconName: "beats.headphones", balance: 678.21))
        
        
        return accVM
    }
    
}



