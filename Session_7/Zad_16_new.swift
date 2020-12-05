// за самостоятелна работа: да се оптимизира решението на задачата 16,
// така при обхождането при търсенето на пасващо число да прескача поредица от
// последователни числа които вече са били ползвани.
// 2:31
// Пример: ако сме стигнали дотук
// 2:31
// 0,1,2,3,4,5,6,7,8,9,10
// 2:32
// при търсенто на подходящо число да започнем от 11

func generateSeqencue(_ n: Int) -> [Int] {
    var i = 10
    var result = Array(0...10)

    while result.count < n {
        var j = 1
        while true {
            if !hasSameDigits(i, j) && !result.contains(j) {
                result.append(j)
                i = j
                break
            }
            
            j += 1
        }
    }

    return result
}

func hasSameDigits(_ i: Int, _ j: Int) -> Bool {
    var digits = Array(repeating: false, count: 10)
    var i = i, j = j

    while i > 0 {
        digits[i % 10] = true
        i /= 10
    }

    while j > 0 {
        if digits[j % 10] {
            return true
        }

        j /= 10
    }

    return false
}

// 0,1,2,3,4,5,6,7,8,9,10,22,11,20,13,24...
var seq = generateSeqencue(150)
print(seq) 