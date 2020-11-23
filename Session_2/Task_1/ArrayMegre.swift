protocol IMain {
    func Main();
}

public class StartUp:IMain {
    
    // Задача 2. Да се напише функция която приема като
    // параметър два сортирани масива от числа и връща 
    // трети сортиран масив обединяващ числата от
    // подадените масиви.

    // Main function.
    public func Main() -> Void {
        // Here are the two arrays.
        var arrOne = [1,3,5,7,9,11,12,14];
        var arrTwo = [2,4,6,8,10,13,15];

        var arr1 = Sorting(arrOne);
        var arr2 = Sorting(arrTwo);        

        var result = SortedArray(arr1, arr2);
        print(result)
    }

    // Here is the merge.
    private func SortedArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {   
        var returnArrays = arr1 + arr2;
        var result = Sorting(returnArrays);
        return result;
    }

    // Insertion sorting.
    private func Sorting(_ arrToConvert: [Int]) -> [Int] {
        var arr = arrToConvert;
        var n = arr.count; 
        for i in 0..<arr.count {
            let key = arr[i]; 
            var j = i - 1;
            while (j >= 0 && arr[j] > key) { 
                arr[j + 1] = arr[j]; 
                j = j - 1; 
            } 
            arr[j + 1] = key; 
        }
        return arr;
    }

    // Not usable.
    private func MathMin<T>(_ x: T, _ y: T) -> T where T : Comparable {
        if x < y {
            return x;
        } else if(x > y){
            return y;
        } else {
            return x;
        }
    }
}

var startUp = StartUp();
startUp.Main();