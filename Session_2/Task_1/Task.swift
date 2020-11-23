protocol IMain {
    func Main();
}

public class List<T> {
    private var count: Int = 0;
    private var listArray: Array<T>;

    init() {
        self.listArray = Array<T>()
    }
    
    public func Add(_ item: T) -> T {
        self.listArray.append(item);
        self.count += 1;
        return item;
    }

    public func Remove(_ place: Int) -> Int {
        self.listArray.remove(at: place);
        self.count -= 1;
        return place;
    }

    public func Count(_ item: T) -> Int {
        return self.count;
    }
}

public class StartUp:IMain {
    
    // You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it.
    // The value of d will always be 0 - 9.
    // The value of x will always be greater than 0.
    // You have to return as an array
    // the count of these numbers,
    // their sum
    // and their product.

    public func Main() -> Void {

    }
}

var startUp = StartUp();
startUp.Main();