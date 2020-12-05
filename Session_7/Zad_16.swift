    // 16. да се генерират следната последователност
    // 0,1,2,3,4,5,6,7,8,9,10,22,11,20,13,24,15...
    // правилто за всяко следващо число е:
    // - да не е било използвано вече
    // - да не съдържа цифрите на последно добавеното число
    // - ако повече от 1 число отговаря на условието да се ползва най малкото
    // Пример:
    // 1-10 - всяко следващо няма общи цифри с предишното
    // от 11 нататък, първото което няма 1 е 22
    // след 22 - следващото, което няма 2 е 11. 33 също отговаря на условието,
    //  но 11 е по малко и ползваме него
    // Да се напише функция връща в масив първите n числа от тази поредица.
    // Групова работа с Димитър Динев

    var list = Array<Int>()
    var visited = [Bool]()
    var isFound = false;
    var previosNum = 10;

    func findSequence(_ max: Int) -> [Int] {
        for i in 0...10 {
            list.append(i);
        }

        sequence(10, max);
        return list;
    }
    
    func sequence(_ num: Int,_ max: Int) {
        visited = Array(repeating: false, count: max + 1);

        // to do numbers form 0 to 10
        // while (num < Int.max) {
            //10,22,11,20,13,24...
        var i = 10
        while i < max {
            // check for used numbers.
            if (!visited[i]) {
                // check for distinct numbers
                distinct(i, max, previosNum);
            }

            // this is the bottom flag for the recursion for adding in the array.
            i += 1;
            isFound = false;
        }

    }

    func distinct(_ num: Int,_ max: Int,_ previos: Int) {
        // Bottom for preventing out of bounds
        if num == max {
            return;
        }
        
        var unique = Set<Int>()
        var length = String(previos).count;

        // variables to be divided.
        var previosNumber = previos;
        var currNum = num;

        var tempNum = currNum % 10;

        // filling the set with previos numbers.
        while (previosNumber > 0) {
            var uniqueNum = previosNumber % 10;

            // Filing the set with the previos numbers.
            if (!unique.contains(uniqueNum)) {
                unique.insert(uniqueNum);
            }

            previosNumber /= 10;
        }
        
        while (length > 0) {
            // Checks for contained individual numbers.
            if (unique.contains(tempNum)) {
                // Go in recursion with new number to check.
                distinct(num + 1, max, previos);
            }

            length -= 1;
            tempNum = currNum / 10;
        }

        // Bottom of the recursion.
        if (!isFound) {
            // Adding to the array
            if (!visited[num]) {   
                list.append(num);
                previosNum = num;
                visited[num] = true;
                isFound = true;
            } else {
                // If the number is in the array go in recursion again.
                distinct(num + 1, max, previos);
            }
        }

        return;
    }

let start = findSequence(30);
print(start);