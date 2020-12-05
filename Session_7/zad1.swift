

func localMax(_ arr: [Int]) -> String {
    var res = ""

    if arr[0] > arr[1] {
        res += "[\(arr[0])] "
    }else {
        res += String(arr[0]) + " "
    }

    let c = arr.count - 1 // last index

    for i in 1..<c{
        if arr[i] > arr[i - 1] && arr[i] > arr[i + 1]{
            res += "[\(arr[i])] "
        }else {
            res += String(arr[i]) + " "
        }
    }

    if arr[c] > arr[c - 1]{
        res += "[\(arr[c])] "
    }else {
        res += String(arr[c])
    }

    return res
}

var arr = [2, 1, 3, 2, 0, 5, 3]
print(localMax(arr))