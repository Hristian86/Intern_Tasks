// тест2 задача2. да се напише функция с параметър масив и число която
//  извършва ротация на масива, с толкова стъпки колкото е чслото.
// възможна оптимизация е да се направи без помощен масив.
// няма да се зачитат решения които ползват функциите на класа Array,
//  като remove, append, a[i...j], reverse и т.н.
// Пример:
// [1, 2, 3], 1 -> [2, 3, 1]
// [1, 2, 3], 2 -> [3, 1, 2]


func rotateArray(_ arr:inout [Int],_ rotate: Int) -> [Int] {
    var temp = 0
    var rotateCount = rotate > arr.count ? rotate % arr.count : rotate;
    
    for i in 0...rotateCount {
        
        temp = arr[0]
        for j in 0..<arr.count - 1 {
            arr[j] = arr[j + 1]
        }

        arr[arr.count - 1] = temp
    }

    return arr;
}

var a = [1,2,3,4,5,6]
var result = rotateArray(&a,8)
print(result)



// func rotateArray(_ arr:inout [Int],_ rotate: Int) -> [Int] {
//     var temp = 0
//     var tempArr = Array(repeating: 0, count: arr.count - 1)

//     temp = arr[0]
//     var last = arr[arr.count - 1]
//     tempArr[rotate - 1] = temp
//     print(tempArr)

//     return arr;
// }

// var a = [1,2,3,4,5,6]
// var result = rotateArray(&a,25)
// print(result)

