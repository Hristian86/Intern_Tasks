
protocol IEngine {
    func Run() -> Int;
}


public class Engine: IEngine {
    private var yearToCalculate: Int = 0;
    init(_ year: Int) {
        self.yearToCalculate = year;
    }

    
    func Run() -> Int {
        yearToCalculate += 1;
        while (!Calculate(yearToCalculate)) {
            yearToCalculate += 1;
        }
        return yearToCalculate;
    }
    
    private func Calculate(_ year: Int) -> Bool {
        var yearToCut = year;
        var visited = [false,false,false,false,false,false,false,false,false,false,];

        while (yearToCut != 0) {
            let number = yearToCut % 10;
            if (visited[number] == true) {
                return false;
            }
            visited[number] = true;
            yearToCut /= 10;
        }
        return true;
    }
    
}

var num: Int = 0;
if let input = readLine()
{
    if let int = Int(input)
    {
        num = int;
        print("Entered input is \(int) of the type:\(type(of: int))")
    }
    else{
        print("Entered input is \(input) of the type:\(type(of: input))")
    }
}

let engine = Engine(num);
let yearToDisplay = engine.Run();
print(yearToDisplay);