// задача 14: да се напише функция която при зададдено 32 
// битово число без знак да го разпечатва във формат на IP
//  адрес - 4 числа в интервала 0-255 разделени със точки
// 257 -> 0.0.1.1

func intToIP(_ num: Int) -> String{
    var num = num
    var ip = ""
    
    for _ in 1...4{
        ip = String(num % 256) + "." + ip
        num /= 256
    }

    ip.removeLast()
    return ip
}

var ip = intToIP(4294967295)
print(ip)


// func intToIP(_ num: Int) -> String{
//   var num = num
//   var ip = ""
//   for _ in 1...4{
//     ip = String(num % 256) + "." + ip
//     num /= 256
//   }
//   ip.removeLast()
//   return ip
// }
// var ip = intToIP(4294967295)
// print(ip)