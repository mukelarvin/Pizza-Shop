import Dispatch

public class OvenController {
    var ovens: [Bool]

    public init(numberOfOvens:Int){
        self.ovens = Array(repeating: false, count: numberOfOvens)
    }

    public func bake(pizza:Pizza, completion: ()->()) {
        print("\(pizza.name) waiting to bake")
        while pizza.status == PizzaStatus.waiting {
            if let ovenID = ovens.firstIndex(of: false) {
                ovens[ovenID] = true
                pizza.status = PizzaStatus.baking
                print("\(pizza.name) in the oven")

                // Need some way to delay

                self.ovens[ovenID] = false
                pizza.status = PizzaStatus.hotAndReady
                print("\(pizza.name) is hot and ready")
                completion()
            } 
        }
    }
}