protocol IMain {
    func Main() -> Void
}

public class StartUp: IMain {

// You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it.
// The value of d will always be 0 - 9.
// The value of x will always be greater than 0.
// You have to return as an array
// the count of these numbers,
// their sum
// and their product.

// Evgeni Milev12:00 PM
// Given a number , Return _The Maximum number _ could be formed from the digits of the number given .
// Only Natural numbers passed to the function , numbers Contain digits [0:9] inclusive

// Digit Duplications could occur , So also consider it when forming the Largest
// As 321 is _The Maximum number _ could be formed from the digits of the number *213*** .
// Evgeni Milev12:01 PM
// As 9873 is _The Maximum number _ could be formed from the digits of the number *7389*** .
// maxNumber (213) ==> return (321)
// Velina Tsivneva12:18 PM
// .sorted(by:>) 
// Evgeni Milev12:18 PM
// let reversed1 = Array(numbers.sorted().reversed())
// Evgeni Milev12:26 PM
// for (index, element) in list.enumerated() 

    public func Main() -> Void {
        // Start to code here.
        let display = Calculate(1864930450);
        print(display);
    }

    func Calculate(_ number: Int) -> Int {
        var tempNumber = number;
        var numbers = [0,0,0,0,0,0,0,0,0,0];

        while tempNumber > 0 {
            let lastNum = tempNumber % 10;
            numbers[lastNum] += 1;
            tempNumber /= 10;
        }
        
        // var toBeDisplayed = Array<Int>();
        // String result
        var displs: String = "";

        // Reversed numbers.
        for i in 0..<numbers.count {
            if numbers[numbers.count - i - 1] > 0 {
                var res = numbers.count - i - 1;
                var countOfNumbers = numbers[numbers.count - i - 1];
                if countOfNumbers > 1 {
                    while countOfNumbers != 0 {
                        displs += String(res);
                        countOfNumbers -= 1;
                    }
                } else {
                    displs += String(res);
                }
            }
        }
        return Int(displs) ?? 0;
    }    
}

var startUp = StartUp();
startUp.Main();