// за дадено число да се върне стринг със - преди и след всяка нечена цифра,
// но не в началото и края на стринга
// 274 -> '2-7-4'
// 6815 -> '68-1-5'

public func oddCalculating (_ x: Int) -> String {
    var reversNum: String = String(x);
    var reversedString: String = "";
    var charArr = Array<Character>(reversNum);
    for i in 0..<charArr.count {
        reversedString += String(charArr[charArr.count - i - 1]);
    }

    var x1 = Int(reversedString) ?? 0;
    var s = "";
    var next = 0;
    var start = false;
        
    while (x1 > 0) {
        var d = x1 % 10;
        x1 /= 10;
        next = x1 % 10;
            
        if (d % 2 == 0) {
            s += String(d);
        } else {
            if (next % 2 == 0 && x1 > 0) {
                s += start == false
                ?  "\(String(d))-" 
                : "-\(String(d))-" ;
            } else {
                s += start == false
                ? "\(String(d))"
                : "-\(String(d))";
            }
        }
        start = true;
    }    
    return s;
}

var result = oddCalculating(172227);
print(result);