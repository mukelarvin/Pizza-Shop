public class Shop {
    let name: String
    let ovenController: OvenController
    var orders: [Order]

    public init(name: String, numberOfOvens: Int) {
        self.name = name
        self.ovenController = OvenController(numberOfOvens: numberOfOvens)
        self.orders = []
    }

    public func processOrder(order: Order ) {
        print("Shop: \(self.name), recieved Order: \(order.id)")
        for pizza in order.pizzas{
            order.status = OrderStatus.cooking
            ovenController.bake(pizza: pizza) { () -> () in
                print("Shop: \(self.name), next pizza")
            }
        }
        order.status = OrderStatus.ready
        print("Shop: \(self.name), Order: \(order.id) is ready for pickup")
    }
}