// тест1 задача1: да се напише функция която по
// зададена дата да връща деня от седмицата за тази дата

// тест1 задача2: да се разработи функция която получава 
// като параметър масив и връща друг масив в който всяка
// стойност от първия масив се съдържа само веднъж, като
// се запазва първоначалното подреждане
// пример
// 3, 12, 5, 12, 8, 5 -> 3, 12, 5, 8
// 1, 2, 3, 2, 1 -> 1, 2, 3

// Task 2

func UniqueNumbers(_ arr: [Int]) -> [Int] {
    var result = Array<Int>();
    var maxNum = 0;

    for j in 0..<arr.count {
        if maxNum < arr[j] {
            maxNum = arr[j]
        }    
    }

    var visited = Array(repeating: false, count: maxNum + 1)

    for i in 0..<arr.count {
        if visited[arr[i]] == false {
            result.append(arr[i]);
            visited[arr[i]] = true;
        }
    }
    
    return result;
}

var a = [3, 12, 5, 12, 8, 5]
var res = UniqueNumbers(a)
print(res)