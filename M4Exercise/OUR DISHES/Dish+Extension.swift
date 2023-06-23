import Foundation
import CoreData


extension Dish {

    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        
        for element in menuItems {
            if (Dish.exists(name: element.title, context)!){
                
            }else{
                let items = Dish(context: context)
                items.name = element.title
                items.price = (element.price as NSString).floatValue
            }
        }
        
        
    }
    
}
