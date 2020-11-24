/**
 * Main
 */
public class Main {

    // за дадено число да се върне стринг
    // със - преди и след всяка нечена цифра,
    // но не в началото и края на стринга
    // 274 -> '2-7-4'
    // 6815 -> '68-1-5'
    
    public static void main(String[] args) {
        var result = oddCalculating(6815);
        System.out.println(result);
    }

    public static String oddCalculating (int x) {
        
        var x1 = x;
        var s = "";
        var previos = 0;
        var next = 0;
        
        while (x1 > 0) {
            var d = x1 % 10;
            x1 /= 10;
            next = x1 % 10;
            
            if (d % 2 == 0) {
                s += String.valueOf(d);
                
            } else {
                if (next % 2 == 0) {
                    s +=  "-" + String.valueOf(d) + "-" ;
                } else {
                    s += "-" + String.valueOf(d);
                }
            }
            
        }
        
        return s;
    }
}