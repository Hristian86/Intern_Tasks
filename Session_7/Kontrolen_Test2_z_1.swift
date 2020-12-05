//     тест2 задача1. да се напише функция с параметри два стринга и 
//     връща стринг съдържащ общите букви от двта стринга без повторения.

func stringManipulator(_ word1: String,_ word2: String) -> String {
    var unique = Set<Character>()
    var unique2 = Set<Character>()    
    

    var allWords = word1 + word2;
    var result = ""

    for i in allWords {
        if !unique.contains(i) {
            unique.insert(i);
            result += String(i);
        }
    }
    
    return result
}

var result = stringManipulator("gosho","pesho")
print(result)