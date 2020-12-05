// 19. зададен е масив с уникални числа, с изкючение на 1 което се повтара 2 
// пъти. да се намери кое е то по най ефективния начин
// Пример: 1, 4, 6, 7, 1, 13 -> 1

// Групова задача със Svetli Kanchev

func findRepeats(_ arr: [Int]) -> Int{
    var search = 0
    var unique = Set<Int>()

    for i in arr{
        if unique.contains(i){
            search = i
            break
        } else {
            unique.insert(i)
        }
    }

    return search
}

var arr = [1, 4, 6, 7, 1, 13]
var rep = findRepeats(arr)
print(rep)