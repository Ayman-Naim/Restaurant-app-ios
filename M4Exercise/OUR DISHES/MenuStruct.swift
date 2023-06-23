import Foundation

struct JSONMenu: Codable {
    let menu  : [MenuItem]
    enum codingKeuys : String,CodingKey {
    case menu = "menu"
    }
    // add code here
}


struct MenuItem: Codable, Identifiable ,Hashable{
    let id = UUID()
    let title :  String
    let price : String
    
    enum codingKeys : String,CodingKey{
        case title = "title"
        case price  = "price"
        
    }
    
    // add code here
}
