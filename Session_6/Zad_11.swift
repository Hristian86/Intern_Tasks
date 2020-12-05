// здача 11: да се модирицира имплементацията на selection sort 
// така че на всяко обхождане на подмасива да намира също
// минималния елемент и да го слага на последна позиция в подмасива.

func sort(_ arr:inout [Int]) {
    for i in 0..<arr.count {
        var curMin = min(&arr,i)
        var temp = arr[i]

        arr[i]  =  arr[curMin]
        arr[curMin] = temp
    }
}

func min(_ arr:inout [Int], _ n: Int) -> Int {
    var min : Int = n
    var max = 0;

    for i in n+1 ..< arr.count {
        if arr[i] < arr[min] {
            min = i
        }

        if arr[i] > max {
            max = i
        }        
    }

    arr.append(arr[max]);
    arr.remove(at: max);

    return min;
}

var a = [2,3,5,3,7,9,5]
sort(&a) // & е pointer
print(a)
