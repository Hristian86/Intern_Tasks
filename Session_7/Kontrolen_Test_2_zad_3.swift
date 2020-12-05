// тест2 задача 3: да се напише функция която извършва умножение на 2 числа като
//  се разложат на цифри и се приложят правилата за умножение които се учат в училище.

// 321
// 1 2 3

var primeFactor = [(Int, Int)]()

func multiple(_ x: Int,_ y: Int) {
    
    var length = String(x).count
    var result = 0
    var zeros = length - 1
    
    while length > 0 {
        var lastNum = x % 10
        print(lastNum)
        primesInRange(lastNum)

        length -= 1;    
    }

    print(primesInRange)

}

func primesInRange(_ targetNum: Int) {
        var end = targetNum;
        var result = Array(repeating: 0, count: end + 1)
        var visited = Array(repeating: false, count: end + 1)

        for i in 2..<end {
            if (visited[i]) {
                continue;
            }

            result[i] = i;

            var j = i * i;
            while j < end {
                visited[j] = true;
                j += i;
            }
        }
        
        for s in 2..<end / 2 {
            if (result[s] > 0) {   
                var count = 0;
                divideNums(end, result, s, count)
            }
        }
}

func divideNums(_ end: Int, _ result: [Int],_ s: Int,_ occurrence: Int) {
        var end = end;
        var occurrence = occurrence;

        if (end % result[s] == 0) {
            end = end / result[s];
            
            divideNums(end, result, s, occurrence + 1);
        } else {
            if (occurrence > 0) {   
                primeFactor.append((s,occurrence));
            }

            return;
        }
    }

var x = 23;
var y = 44;
multiple(x, y)