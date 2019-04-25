//import Foundation

class APIDataManager:UserProtocol {
    var userName: String{
        get {
            return getUser().name
        }
    }
    
    func getUser() -> User {
        return User(name:"Андрей", age:20)
    }
    
    
}
