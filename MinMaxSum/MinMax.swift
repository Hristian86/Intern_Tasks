// Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

// Example 

// The minimum sum is  and the maximum sum is . The function prints

// 16 24
// Function Description

// Complete the miniMaxSum function in the editor below.

// miniMaxSum has the following parameter(s):

// arr: an array of  integers
// Print

// Print two space-separated integers on one line: the minimum sum and the maximum sum of  of  elements.

// Input Format

// A single line of five space-separated integers.

// Constraints


// Output Format

// Print two space-separated long integers denoting the respective minimum and maximum values that can be calculated by summing exactly four of the five integers. (The output can be greater than a 32 bit integer.)

// Sample Input

// 1 2 3 4 5
// Sample Output

// 10 14
// Explanation

// The numbers are , , , , and . Calculate the following sums using four of the five integers:

// Sum everything except 1, the sum is .2 + 3 + 4 + 5
// Sum everything except 2, the sum is .1 + 3 + 4 + 5
// Sum everything except 3, the sum is .1 + 2 + 4 + 5
// Sum everything except 4, the sum is .1 + 2 + 3 + 5
// Sum everything except 5, the sum is .1 + 2 + 3 + 4
// Hints: Beware of integer overflow! Use 64-bit Integer.

// Need help to get started? Try the Solve Me First problem

public func SumAll(_ arr: [Int], _ i: Int, _ sumArray: [Int]) -> Int {
    var temp: [Int] = sumArray;
    temp[i] = arr.reduce(0, { x, y in
        x + y
    }
    )
    temp[i] = temp[i] - arr[i];
    return temp[i];
}

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
    var sumArray = Array(repeating: 0, count: arr.count);
    var array = Array(repeating: 0, count: arr.count);
    for i in 0..<arr.count {
       array[i] = SumAll(arr, i, sumArray);
}
var min = array.min() ?? 0
var max = array.max() ?? 0
print("\(min) \(max)")
}

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

// miniMaxSum(arr: arr)