// 18. при зададен масив с числа, подредени нарастващо, като всяко число е с 1 
// по голямо от предходното да се намери липсващ елемент.
// това да се случи по възможно най ефективния начин.
// Пример:
// 1, 2, 4, 5 -> 3
// 8, 9, 10, 12 - 11

// Групова задача със Svetli Kanchev

func find(_ arr: [Int]) -> Int{
    var search = 0
    let first = arr[0]
    var left = 0, right = arr.count - 1
    
    while left <= right{
        let mid = (left + right) / 2

        if arr[mid] - first == mid {
            left = mid + 1
        } else if arr[mid - 1] - first == mid - 1{
            search = mid + first
            break
        } else {
            right = mid - 1
        }
    }

    return search
}

var arr = [8, 10, 11, 12]
var search = find(arr)
print(search)