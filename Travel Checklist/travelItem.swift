import UIKit

// Global
var travelList: travelItem = travelItem()
var itemTotal = 0.00

struct item {
    var name = "Item Name"
    var cost = "0.00";
}

class travelItem: NSObject {

    var items = [item]()
    
    
    
    func addItem(name: String, cost: String) {
        // add a new item to your travel list
        items.append(item(name: name, cost: cost))
        let myDouble = Double(cost)
        itemTotal += myDouble!
        print(itemTotal)
    }
    
    func retTotal() -> Double {
        return itemTotal
    }
    
}
