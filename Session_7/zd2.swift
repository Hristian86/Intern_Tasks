
let hex = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]

func convert(_ num: Int) -> String{
    var res = ""
    res += hex[num % 16]
    res = hex[num / 16] + res

    return res
}

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String{
    guard r >= 0 && r <= 255 else {
        print("error")
        return ""
    }

    guard g >= 0 && g <= 255 else {
        print("error")
        return ""
    }

    guard b >= 0 && b <= 255 else {
        print("error")
        return ""
    }

    var res = ""
    res += convert(r)
    res += convert(g)
    res += convert(b)

    return res
}

var color = rgb(0, 10, 254)
print(color)