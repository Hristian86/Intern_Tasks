// Dimitar Dinev

func sort(_ arr:inout [Int]) {
    var i = 0, j  = arr.count - 1

    while i < j {
        var (min,max) = minMax(arr, i, j)
        arr.swapAt(i, min)
        arr.swapAt(j, max)
        i += 1
        j -= 1
    }
}

func minMax(_ arr: [Int], _ n: Int, _ m: Int) -> (Int,Int) {
    var min = n, max = n

    for i in n+1 ..<m {
        if arr[i] < arr[min] {
            min = i
        }

        if arr[i] > arr[max] {
            max = i
        }
    }

    return (min,max)
}

var a = [2,3,5,3,7,9,5,1]
sort(&a) // & е pointer
print(a)