protocol IMain {
    func Main() -> Void
}

public class StartUp: IMain {

// Digit Duplications could occur , So also consider it when forming the Largest
// As 321 is _The Maximum number _ could be formed from the digits of the number *213*** .
// Evgeni Milev12:01 PM
// As 9873 is _The Maximum number _ could be formed from the digits of the number *7389*** .
// maxNumber (213) ==> return (321)
// Velina Tsivneva12:18 PM
// .sorted(by:>)
// let reversed1 = Array(numbers.sorted().reversed())
// for (index, element) in list.enumerated() 

    public func Main() -> Void {
        // Start to code here.
        let display = Calculate(1864930450);
        print(display);
    }

    func Calculate(_ number: Int) -> Int {
        var tempNumber = number;
        var numbers = [0,0,0,0,0,0,0,0,0,0];
        // var toBeDisplayed = Array<Int>();
        // String result
        var displs: String = "";

        while tempNumber > 0 {
            let lastNum = tempNumber % 10;
            numbers[lastNum] += 1;
            tempNumber /= 10;
        }

        // Reversed numbers.
        for i in 0..<numbers.count {
            if numbers[numbers.count - i - 1] > 0 {
                let res = numbers.count - i - 1;
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