public enum PizzaStatus {
    case waiting, baking, hotAndReady
}

public class Pizza {
    let name: String
    public var hotAndReady = false
    var status: PizzaStatus = PizzaStatus.waiting

    public init(name:String){
        self.name = name
    }
}