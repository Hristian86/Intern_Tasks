// задача 3: сортиране на масив по намаляваща честота на елементите.
// ако два елмента имат същата честота се сортират в нарастващ ред.
// може да приемем че стойностите ще бъдат в диапазона 0 - 100.
// [2,3,5,3,7,9,5,3,7] => [3,3,3,5,5,7,7,2,9]
// [2, 1, 2] => [2, 2, 1]

func ArraySorting() -> Void {
    var arr = [2,3,5,3,7,9,5,3,7,11,33,44,55];
    // var arr = [2,1,2]
    var result = Array<Int>();
    var maxNumber = 0;
    for i in 0..<arr.count {
        
        if maxNumber < arr[i] {
            maxNumber = arr[i];
        }
        
    }
    Sort(arr, maxNumber);
    for i in 0..<arr.count {
        var temp = arr[i];
        var minIndex = i;

        for j in (1 + i)..<arr.count {
            if arr[j] <= arr[minIndex] {
                minIndex = j;
            }
        }


        
        if maxNumber < arr[i] {
            maxNumber = arr[i];
        }
        
        arr[i] = arr[minIndex];
        arr[minIndex] = temp;
    }
    
    Sort(arr,maxNumber);
    // print(arr);
    // var str = "";
    // for item in arr {
    //     str += String(item)
    // }
    // print(str);

    // Sort(arr);
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

    for item in arrOfDict {
        print("\(item.key) => \(item.value)");
        
        // if item.value > 0 {
        //     for i in 0..<item.value {
        //         // print(i);
        //         arrayRes.append(item.key);
        //     }
        // }
    }
    
    for i in 0..<maxNumber + 1 {
        
        if arrOfDict[i] != nil {
            print(arrOfDict[i])
            print(i);
            let tempDict = arrOfDict[i] ?? 0;
            for j in 0..<tempDict {
                
            }
        }
        
    }
}

var result = ArraySorting();
// print(result);