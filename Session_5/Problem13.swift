// задача 9: даден е масив с числа. да се разработи 
// функция която сортира само нечетните числа,
//  като четните остават по своите места
// [5, 3, 2, 8, 1, 4] -> [1, 3, 2, 8, 5, 4] (edited) 

func sort(_ arr:inout [Int]) {
    for i in 0..<arr.count {
        var curMin = min(arr,i)
        var temp = arr[i]
        arr[i]  =  arr[curMin]
        arr[curMin] = temp
    }
}

func min(_ arr: [Int], _ n: Int) -> Int {
    var min : Int = n
    for i in n+1 ..< arr.count {
        if arr[i] < arr[min] && i % 2 == 0 && min % 2 == 0 {
            min = i
        }
    }
    return min
}

var a = [5, 3, 2, 8, 1, 4]
sort(&a) // & е pointer
print(a)