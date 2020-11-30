// тест1 задача1: да се напише функция която по
// зададена дата да връща деня от седмицата за тази дата

// func DateManipulator() ->  {
    
// }

// public static int day_of_the_week(int y,  
//                                  int m, int d) 
//     { 
          
//         // array with leading number of days 
//         // values 
//         int []t = { 0, 3, 2, 5, 0, 3, 5, 1, 
//                                 4, 6, 2, 4 }; 
          
//         // if month is less than 3 reduce 
//         // year by 1 
//         if (m < 3) 
//             y -= 1; 
          
//         return (y + y / 4 - y / 100 + y / 400  
//                           + t[m - 1] + d) % 7; 
//     } 

// func DayManipulator(_ date: Strng) -> String {
//     var d = date.substring(to: 1);
//     var m = date.substring(to: 1);
    
// }

public func DayOfWeek(_ y: Int,_ m: Int,_ d: Int) -> Int {
    var t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4 ];
    return (y + y / 4 - y / 100 + y / 400  + t[m - 1] + d) % 7;
}
    
public class Run {
    private var d: Int = 0;
    private var m: Int = 0;
    private var y: Int = 0;
    private let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    private let days = ["Sunday","Monday","Tuesday","Wednesday", "Thursday", "Friday", "Saturday"]

    private func DayOfWeek(_ y: Int,_ m: Int,_ d: Int) -> Int {
        var t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4 ];
        return (y + y / 4 - y / 100 + y / 400  + t[m - 1] + d) % 7;
    }

    public func GetDay(_ date: Int) -> String {
        self.d = date / 1000000;
        self.m = date % 1000000;
        self.m = m / 10000 - 1;
        self.y = date % 10000;
        
        var dayResult = self.d
        
        if dayResult > daysInMonth[self.m] {
            
            var month = daysInMonth[self.m];        
                if self.m + 1  ==  12{
                self.y = self.y + 1;
            }

            self.m = self.m + 1 < 12 
            ? self.m + 1 
            : 0;
            dayResult = dayResult - month;   
        }

        var dayToDisp = dayResult < 10 
        ? "0\(dayResult)" 
        : "\(dayResult)";
        var calc = self.m  > 8 
        ? "\(dayToDisp)\(self.m + 1)\(self.y)" 
        : "\(dayToDisp)0\(self.m + 1)\(self.y)";
        
        var day = DayOfWeek(y,m + 1,d)
        return days[day];
    }
}

let start = Run();
let result = start.GetDay(27032020);
print(result);