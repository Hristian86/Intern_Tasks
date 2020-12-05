// 19. в даден стринг да се намери фрагмент с минимална
//  дължина който да съдържа 3 определени думи (в произволен ред)
// Пример:
// текст: четири десет и четири милиона четири хиляди четири стотин четири десет и четири
// - думи: четири милиона десет
// -> четири десет и четири милиона
// Забележка: има и друго решение, но то е по дълго
// -> милиона четири хиляди четири стотин четири десет

func findWords(_ words: String,_ searchWords: String)  {
    // Split the input string words in to array.
    var wordsArr = splitWords(words);

    // Split the search words in to array.
    var searchArray = splitWords(searchWords)

    // Find the nim and max index to form the result string.
    var (min,max) = searchIndex(searchArray, wordsArr);
    
    if min == -1 {
        print("Not found")
    } else {
        // print result
        printResult(min, max, wordsArr)
    }
}

func printResult(_ min: Int,_ max: Int,_ arr: [String]) {
    var result = ""

    for i in min...max {
        result += arr[i] + " "
    }
    
    result.removeLast()
    print(result)
}

func searchIndex(_ searchArray: [String],_ wordsArr: [String]) -> (Int,Int) {
    var max = -1;
    var min = wordsArr.count - 1
    
    for i in searchArray {
        var index = find(wordsArr, i)
        
        if index == -1 {
            break
        }
        
        if index > max {
            max = index
        }
        
        if index < min {
            min = index
        }        
    }

    return (min,max)
}

func find(_ arr: [String],_ word: String) -> Int {
    var maxCycle = arr.count % 2 == 0 ? arr.count / 2 : arr.count / 2 + 1;

    for i in 0..<maxCycle {
        if arr[i] == word {
            return i
        }

        if arr[arr.count - i - 1] == word {
            return arr.count - i - 1
        }
    }

    return -1
}

func splitWords(_ words: String) -> [String] {
    var wordsArr = Array<String>()
    var res = ""

    var j = 0;
    for i in words {
        if i == " " {
            wordsArr.append(res);
            res = "";
            j += 1
            continue;
        } else if j == words.count - 1 {
            res += words.suffix(1)
            wordsArr.append(res);
            res = "";
        }
        
        res += String(i);
        j += 1;
    }
    
    return wordsArr;
}

let words = "четири десет и четири милиона четири хиляди четири стотин четири десет и четири"
let searchWords = "четири милиона десет"
findWords(words, searchWords)