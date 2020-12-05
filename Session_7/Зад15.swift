// задача 13: да се напише функция rgb която получава 3 стойности в
// интервал 0-255 включително и връща стринг в който стойностите 
// са в 16чен код и са залепени по редна на параметрите.
// (255, 255, 255) -> FFFFFF
// (255, 255, 254) -> FFFFFЕ
// (0, 0, 0) -> 000000
// (148, 0, 211) -> 9400D3
// забележка: да не се позлват вградените функции на езика


public class RGBConverter {
    let hexa = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"];
    
    init() {}
    public func rgbColor(_ r: Int,_ g: Int,_ b: Int) -> String {
        var totalRes = "";
        
        totalRes += convert(r)
        totalRes += convert(g)
        totalRes += convert(b)

        return totalRes;
    }

    private func convert(_ num: Int) -> String {
        var result = "";
        var copy = num;

        if num == 0 {
            result += "00"
        } else if num > 256 {
            result = "Unsupported"
        } else if num < 16 {
            result += "0";
            result += hexa[copy % 16];
        } else { 
            result += hexa[num / 16];
            result += hexa[copy % 16];        
        }

        return result;
    }
}

let convert = RGBConverter();
let result = convert.rgbColor(255,255,255);
print(result);