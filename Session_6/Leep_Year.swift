func isLeapYear (_ year : Int ) -> Bool {
    if year % 4 == 0  {
        if year % 100 == 0 &&  year % 400 != 0 {
            return false
        }
        return true
    }
    return f
}

func daysSince2000(_ y: Int, _ m: Int, _ d: Int) -> Int {
    var result = 0

    //for i in stride(from: 2000, to: y, by: 4) {
    //     
    //}
    //result += 15 * 365 + 
    for yy in 2000..<y {
        reulst += 365
        if isLeapYear(yy) {
            result += 1
        }
    }

    return result
}

let day01012000 = 1  // tuesday
let dayNames = ["monday", "tuesday"]

func dayOfWeek(_ date: Int) -> String {
    var y = date % 10000
    var date = date / 10000

    var d = date / 100
    var m = date % 100 - 1

    var days = daysSince2000(y, m, d)

    // 7 + 1 - days since the monday of the week of start day: day01012000
    // 8.01.2000 - > (7 + 1) % 7 = 1
    var dayOfWeek = (days + day01012000) % 7

    return dayNames[dayOfWeek]
}

var day = dayOfWeek(12122020)
print("day: ", day) 