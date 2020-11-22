// Given a time in -hour AM/PM format, convert it to military (24-hour) time.

// Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock. 
// - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

// Example


// Return '12:01:00'.


// Return '00:01:00'.

// Function Description

// Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.

// timeConversion has the following parameter(s):

// string s: a time in  hour format
// Returns

// string: the time in  hour format
// Input Format

// A single string  that represents a time in -hour clock format (i.e.:  or ).

// Constraints

// All input times are valid
// Sample Input 0

// 07:05:45PM
// Sample Output 0

// 19:05:45


/*
 * Complete the timeConversion function below.
 */
func timeConversion(s: String) -> String {
    /*
     * Write your code here.
     */
    var time: String = s;

var display = time.split(separator: ":");
var hours = Int(display[0]) ?? 0
var seconds = display[2]
let index = seconds.index(seconds.startIndex, offsetBy: 2)
let mySubstring = seconds[..<index] // no AM or PM


if (time.contains("PM") && hours != 12) {
    var disp = hours;
    disp += 12;
    return("\(disp):\(display[1]):\(mySubstring)")

} else if (hours == 12 && time.contains("AM")) {
    hours = 0
    return("00:\(display[1]):\(mySubstring)")
} else {
    
    if hours < 10 {
        return("0\(hours):\(display[1]):\(mySubstring)")
    } else {
        return("\(hours):\(display[1]):\(mySubstring)")
    }
    
}

}

let fileName = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: fileName, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: fileName)!

guard let s = readLine() else { fatalError("Bad input") }

let result = timeConversion(s: s)

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)