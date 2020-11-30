// задачата за самостоятелна работа
// задача 6: да се разработи функция за добавяне на дни към дата,
// с параметъри дата и число, която връща дата,
// отговаряща на броя дни от първата дата.
// формата на датите е: ммддгггг.
// Забележка: да се вземат предвид високосните години
// Пример: 29112020, 3 -> 02122020

public class Run {
    private var d: Int = 0;
    private var m: Int = 0;
    private var y: Int = 0;
    private let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    func AddDays(_ date: Int,_ addedDays: Int) -> String {
        // var str = "";
        // var strDate = String(date);

        // for i in 0..<strDate.count {
        //     str += strDate[strDate.count - i - 1];
        // }

        // print(str);

        self.d = date / 1000000;
        self.m = date % 1000000;
        self.m = m / 10000 - 1;
        self.y = date % 10000;
        
        var dayResult = self.d + addedDays;
        
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
        return calc;
    }
}

let start = Run();
let result = start.AddDays(28042020, 3);
print(result);


// func datesDiff(_ date1: Int, _ date2: Int) -> Int {
//     var d1 = days(date1)
//     var d2 = days(date2)
//     return d1 < d2 ? -1 : (d1 - d2)
// }

// func days(_ date: Int) -> Int {
//     var d = date / 100
//     var m = date % 100 - 1
//     let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
//     var result = 0
//     m -= 1
//     while m >= 0 {
//        result += daysInMonth[m]
//        m -= 1
//     }

//     result += d
//     return result
// }

// var d = datesDiff(0112, 3011)
// print(d);