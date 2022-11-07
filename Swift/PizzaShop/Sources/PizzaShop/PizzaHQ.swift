public class PizzaHQ {
    var shops: [Shop]

    public init() {
        self.shops = []
    }

    public func processOrder(order: Order) {
        if let shop = shops.first(where: {$0.name == order.shop}) {
            shop.processOrder(order: order)
        } else {
            print("Shop doesn't exist!")
        }
    }
}