protocol IMain {
    func Main();
}

public class StartUp:IMain {
        
    // Задча1. Приемаме че при печат на стринг символа # изтрива предходния. Това означава че стринг а"a#bc#d"  ще бъде отпечатана така "bd"
    // Напишете програма която печата така.
    // Примери:
    // "abc#d##c"      ==>  "ac"
    // "abc##d######"  ==>  ""
    // "#######"       ==>  ""
    // ""              ==>  "" (edited) 

    public func Main() -> Void {
        var sentance: String = "#######";
        let result = Filter(sentance);
        print("\"\(sentance)\" => \"\(result)\"")
    }

    public func Filter(_ sentance: String) -> String {
        var chararray = Array(sentance);

        while chararray.contains("#") {
            if chararray.count == 1 {
                return "";
            }
            
            for i in 0..<chararray.count {

                if ((i < chararray.count - 1) && (chararray[i + 1] == "#"))  {
                    chararray.remove(at: i + 1);
                    chararray.remove(at: i);
                    break;
                }
                
            }

        }
        
        return String(chararray);        
    }
    
}

var startUp = StartUp();
startUp.Main();