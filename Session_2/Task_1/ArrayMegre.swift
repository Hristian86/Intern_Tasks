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
        var arr1 = [1,3,5,7,9,11,12,14];
        var arr2 = [2,4,6,8,10,13,15];

        arr1 = Sorting(arr1);
        arr2 = Sorting(arr2);        

        var result = SortedArray(arr1, arr2);
        print(result)
    }

    // Here is the merge.
    private func SortedArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {   
        var maxLength: Int = MathMin(arr1.count, arr2.count);
        var returnArrays = Array<Int>();
        
        for i in 0...maxLength {

            if i < arr1.count {
                returnArrays.append(arr1[i]);        
            }

            if i < arr2.count {
                returnArrays.append(arr2[i]);
            }

        }

        returnArrays = Sorting(returnArrays);

        return returnArrays;
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

    private func MathMax<T>(_ x: T, _ y: T) -> T where T : Comparable {
        if x > y {
            return x;
        } 
        return y;
    }

    // Not usable.
    private func MathMin<T>(_ x: T, _ y: T) -> T where T : Comparable {
        if x < y {
            return x;
        } 
        return y;
    }
}

var startUp = StartUp();
startUp.Main();