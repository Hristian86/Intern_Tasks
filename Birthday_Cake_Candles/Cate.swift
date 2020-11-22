/*
 * Complete the 'birthdayCakeCandles' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY candles as parameter.
 */

//  You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

// Example


// The maximum height candles are  units high. There are  of them, so return .

// Function Description

// Complete the function birthdayCakeCandles in the editor below.

// birthdayCakeCandles has the following parameter(s):

// int candles[n]: the candle heights
// Returns

// int: the number of candles that are tallest
// Input Format

// The first line contains a single integer, , the size of . 
// The second line contains  space-separated integers, where each integer  describes the height of .

// Constraints

// Sample Input 0

// 4
// 3 2 1 3
// Sample Output 0

// 2
// Explanation 0

// Candle heights are . The tallest candles are  units, and there are  of them.

func birthdayCakeCandles(candles: [Int]) -> Int {
    // Write your code here
    var max = candles.max() ?? 0;
    var filterArr = candles.filter {
        number in return number == max
    }
    return filterArr.count;
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let candlesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let candlesTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let candles: [Int] = candlesTemp.split(separator: " ").map {
    if let candlesItem = Int($0) {
        return candlesItem
    } else { fatalError("Bad input") }
}

guard candles.count == candlesCount else { fatalError("Bad input") }

let result = birthdayCakeCandles(candles: candles)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)