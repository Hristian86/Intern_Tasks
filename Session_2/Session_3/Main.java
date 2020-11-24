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
        // ArraySorting();
        var arr = new int[]{1, 1, 3, 8, 12, 2, 2, 2, 4, 7, 7};
        var result = findSequence(arr, arr.length);
        System.out.println(result);
    }

    public static void ArraySorting() {
        var arr = new int[]{2,3,5,3,7,9,5,3,7};
        // var arr = new int[]{2,1,2};
        var result = new int[arr.length];
        var count = 0;
    
        for (int i = 0; i < arr.length; i++) {
            var temp = arr[i];
            var minIndex = i;
    
            for (int j = i + 1; j < arr.length; j++) {
                if (arr[j] <= arr[minIndex]) {
                    minIndex = j;
                }
            }

            arr[i] = arr[minIndex];
            arr[minIndex] = temp;
        }
        
        for (int i = 0; i < arr.length; i++) {
            var temp = arr[i];

            for (int j = i + 1; j < arr.length; j++) {
                if (temp == arr[j]) {
                    
                }
            }            
        }
    
        var str = "";
        for (var item : arr) {
            str += String.valueOf(item);
        }
        
        System.out.println(str);
    
        // Sort(arr);
    }

    public static String oddCalculating (int x) {
        
        var x1 = x;
        var s = "";
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