protocol IMain {
    func Main();
}

public class StartUp {

    // You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it.
    // The value of d will always be 0 - 9.
    // The value of x will always be greater than 0.
    // You have to return as an array
    // the count of these numbers,
    // their sum
    // and their product.

    public func Main() -> Void {
        var numberInRange: Int = 650;
        var numberD: Int = 4;
        print(Calculate(numberInRange, numberD))
    }

    
    private func Calculate(_ range: Int, _ searchNum: Int) -> [Int] {
        var array = Array<Int>();
        var tempNum = searchNum;
        var rangeString: String = String(range);
        var sum = searchNum

        if searchNum > range {
            return array;
        }

        for i in 1...searchNum {
            array.append(sum);
            sum = (searchNum + (10 * i)) ;
        }
        
        for i in (searchNum * 10)...range {
            var tempNumberFromRange = i;

            while tempNumberFromRange > 0 {
                    
                if tempNumberFromRange % 10 == searchNum && array[array.count - 1] != i {
                    array.append(i);
                }

                tempNumberFromRange /= 10;
            }
        }
        
        return array;
    }
}

var startUp = StartUp();
startUp.Main();