// 15. делене на число на прости числа
// да се напише функция която получава като параметър число и връща
// списък с двойки числа (prime, factor), които показват на които 
// прости числа се дели числото и колко пъти.
// Пример:
// 125 -> (5, 3)
// 126 -> (2, 1) (7, 1) (3, 2)

public class Primes {
    private var primeFactor = [(Int, Int)]()
    
    public func primeDivide(_ end: Int) -> [(Int, Int)] {
        primesInRange(end);
        return primeFactor;
    }

    private func primesInRange(_ targetNum: Int) {
        var end = targetNum;
        var result = Array(repeating: 0, count: end + 1)
        var visited = Array(repeating: false, count: end + 1)

        for i in 2..<end {
            if (visited[i]) {
                continue;
            }

            result[i] = i;

            var j = i * i;
            while j < end {
                visited[j] = true;
                j += i;
            }
        }
        
        for s in 2..<end / 2 {
            if (result[s] > 0) {   
                var count = 0;
                divideNums(end, result, s, count)
            }
        }
    }

    private func divideNums(_ end: Int, _ result: [Int],_ s: Int,_ occurrence: Int) {
        var end = end;
        var occurrence = occurrence;

        if (end % result[s] == 0) {
            end = end / result[s];
            // I use recursion, probably it is wrong to use recursion for this solution,
            // because usually is used when there are dynamic cycles with unknown count.
            divideNums(end, result, s, occurrence + 1);
        } else {
            if (occurrence > 0) {   
                primeFactor.append((s,occurrence));
            }

            return;
        }
    }
}

let start = Primes();
let res = start.primeDivide(126);
print(res);