


let pie = Pizza(name:"Ham and Pineapple")
let pie2 = Pizza(name:"Pepperoni")
let pie3 = Pizza(name:"Mushroom")


let shop: Shop = Shop(name: "East", numberOfOvens: 1)

let order: Order = Order(id: 1, shop: "East", pizzas: [pie, pie2, pie3])
shop.processOrder(order: order)