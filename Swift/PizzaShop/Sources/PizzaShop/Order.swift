public enum OrderStatus {
    case received, cooking, ready, complete
}

public class Order {
    let id: Int
    let shop: String
    var status: OrderStatus = OrderStatus.received
    let pizzas: [Pizza]

    public init(id: Int, shop: String, pizzas:[Pizza]) {
        self.id = id
        self.shop = shop
        self.pizzas = pizzas
    }
}