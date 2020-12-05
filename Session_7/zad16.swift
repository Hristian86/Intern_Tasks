// 16. да се генерират следната последователност
// 0,1,2,3,4,5,6,7,8,9,10,22,11,20,13,24...
// правилто за всяко следващо число е:
// - да не е било използвано вече
// - да не съдържа цифрите на последно добавеното число
// - ако повече от 1 число отговаря на условието да се ползва най малкото
// Пример:
// 1-10 - всяко следващо няма общи цифри с предишното
// от 11 нататък, първото което няма 1 е 22
// след 22 - следващото, което няма 2 е 11. 33 също отговаря на условието,
//  но 11 е по малко и ползваме него
// Да се напише функция връща в масив първите n числа от тази поредица.

func generateSequence(_ a: Int) -> [Int] {
    let result = sequence(a)
    return result;
}


func sequence(_ a: Int) -> [Int] {
    var a = a
    var arr = Array<Int>()

    for i in 0...a {
        var t = i;
        
        if t > 9 {
            while t > 0 {
                var s = t % 10
                var next = i + 1

                if i + 1 <= a {
                    next = i + 1
                    while next > 0 {
                        var nextRes = next % 10
                        // something
                        if s == nextRes {
                            t += 1
                            break
                        }

                    }
                    next /= 10
                    

                    arr.append(next)
                }
                
                s /= 10
            }
        } else {
            arr.append(t)    
        }
        
        
    }
    return arr;
}

var a = 30;
let start = generateSequence(a)
print(start);