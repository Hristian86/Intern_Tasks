// Групова задача с Микаела: 

// задача в клас: парсиране на comma separated values (CSV)
// да се  напише функция която получава като аргумент стринг със стойности
// разделени със запетая и връща масив от съответните стойности.
// Забележки:
// 1. преди и след дадена стойност може да има интервали
// 2. някои стойности могат да бъдат във единични или двойни кавички
// 3. ако стойностите в кавички съдържа символ за кавички ако преди него 
// има обратна наклонена черта \ той се приема за част от стринга, а не за негов край
// 1, "аааа", 5 -> ["1", "aaaa", "5"]
// 12, 'aaaa', 3 -> ["12", "aaa", "3"]
// "aa\"bb", test" -> ["aa"bb", "test"]

func SeparateByComma(_ data: String) -> [String] {
    var s = data;
    var result = Array<String>();
    var tempStr = "";
    var inQuote = false
    var tempSlash = ""

    for c in s {
        if c == "," {
            if inQuote {
                tempStr += String(c)
            } else {
                result.append(tempStr)
                tempStr = ""
            }
        } else if c == "\"" || c == "'"  {
            if !inQuote {
                if tempSlash == "" {
                    inQuote = !inQuote
                }
                else {
                    tempStr += String(c)
                    tempSlash = ""
                }
            }
        } else if c == "\\" {
            tempSlash = "\\"
        } else if c == " " {
            if inQuote {
                tempStr += String(c)
            } else {
                continue
            }
        } else {
            tempStr += String(c)
        }
    }

    result.append(tempStr)
    return result
}

let str = #"aa\"bb, test"#
let res = SeparateByComma(str);
res.forEach{ x in print(x) }