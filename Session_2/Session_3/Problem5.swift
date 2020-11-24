// задача 4: от масив с числа да се върне най дългата
//  последователност от повтарящи се числа:
// [1, 1, 3, 8, 12, 2, 2, 2, 4, 7, 7] => [2, 2, 2]

func LongestSecuence() -> [Int] {
    var arr = [1, 1, 3, 8, 12, 2, 2, 2, 2, 4, 4, 7, 7, 2, 2];
    var j = 0;
    var key = 0;
    var value = 0;
    var count = 1;

    for i in 0..<arr.count {
        var temp = arr[i];
        j = i + 1;
        
        while j < arr.count && arr[j] == temp {
            j += 1;
            count += 1;
            if value < count {
                value = count;
                key = arr[i];
            }
        }
        count = 1;
    }
    var dispArr = Array(repeating: key, count: value );
    return dispArr;
}

func Sort(_ arr: [Int], _ maxNumbers: Int) -> Void {
    // General idea is to get the number in the array and 
    // check if its repeating it self and increment 
    // dictionary value to be the number of occurance
    var arrOfDict = [Int :Int]();
    var arrayRes = Array<Int>();
    var maxNumber = maxNumbers;
    for i in 0..<arr.count {
        var number = arr[i];
        let keyExists = arrOfDict[number] != nil

        if !keyExists {
            arrOfDict[number] = 1;
        } else {
            var res: Int = arrOfDict[number] ?? 0;
            var result: Int = 0;
            result = res + 1;
            // print(result);
            arrOfDict.updateValue(result, forKey: number);
        }
        
    }

    var key = 0;
    var value = 0;

    for item in arrOfDict {
        // print("\(item.key) => \(item.value)");
        
        if item.value > 0 {
            for i in 0..<item.value {
                // print(i);
                if value < item.value {
                    value = item.value;
                    key = item.key;
                }
            }
        }
    }
    
    print("\(key) => \(value)");
}

var result = LongestSecuence();
print(result);