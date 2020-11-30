func SortByCount() -> [Int] {
    var arr = [2,3,5,3,7,9,5,3,7];
    var returnArr = Array<Int>();
    var maxElement = Int.min;

    for i in 0..<arr.count {
        if (arr[i] > maxElement) {
           maxElement = arr[i];
        }
    }

    var secondArr = Array(repeating: 0, count: maxElement + 1);

    for i in 0..<arr.count {
        secondArr[arr[i]] = secondArr[arr[i]] + 1;
    }

    var s = maxElement;

    while s >= 1 {
        for j in 0..<secondArr.count {
            var number = secondArr[j];
            if (number != 0 && (number == s)) {
                while (number > 0) {
                    // add to array
                    returnArr.append(j);
                    number -= 1;
                }
            }
        }

        s -= 1;
    }

    return returnArr;
}

var result = SortByCount();
print(result);