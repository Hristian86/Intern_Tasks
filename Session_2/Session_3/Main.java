import java.util.LinkedHashMap;

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
        // var result = 
        // ArraySorting();
        // System.out.println(result);
        // sortByCount(arr);
        var arr = new int[]{2,3,5,3,7,9,5,3,7,2,7,8,9,1};
        var treeMap = new LinkedHashMap<>();

        for (int i = 0; i < arr.length; i++) {
            if (!treeMap.containsValue(arr[i])) {   
                treeMap.putIfAbsent(i, arr[i]);
            }
        }

        for (var item : treeMap.values()) {
            System.out.print(item + " ");
        }
    }    
    
    public static void sortByCount(int [] arr) {
        //  int[] arr = {2, 3, 5, 3, 7, 9, 5, 3, 7};
          int maxElement = Integer.MIN_VALUE;
          for (int i = 0; i < arr.length; i++) {
              if (arr[i] > maxElement) {
                  maxElement = arr[i];
              }
          }
          int secondMax = Integer.MIN_VALUE;
  
          int[] secondArr = new int[maxElement+1];
          for (int i = 0; i < arr.length; i++) {
              secondArr[arr[i]] +=1;
              if (secondArr[arr[i]] > secondMax){
                  secondMax = secondArr[arr[i]];
              }
          }
  
          for (int i = secondMax; i >= 1 ; i--) {
              for (int j = 0; j < secondArr.length; j++) {
                  int number = secondArr[j];
                  if (number != 0 && (number == i)) {
                      while (number > 0) {
                          System.out.print(j + " ");
                          number -= 1;
                      }
                  }
              }
          }
          System.out.println();
      }

    public static void ArraySorting() {
        var arr = new int[]{2,3,5,3,7,9,5,3,7};
        var arr2 = new int[arr.length];
        
        // var arr = new int[]{2,1,2};
        var result = new int[arr.length];
        var count = 0;
        var k = 0;
        var key = 0;
        var value = 0;
    
        for (int i = 0; i < arr.length; i++) {
            var temp = arr[i];
            var minIndex = i;
    
            for (int j = i + 1; j < arr.length; j++) {
                if (arr[j] <= arr[minIndex]) {
                    minIndex = j;
                }
            }

            k = i + 1;
        
            while ( k < arr.length && arr[k] == arr[i] ) {
                k += 1;
                count += 1;
                if (value < count) {
                    value = count;
                    key = arr[i];
                }
            }

            // if (count == 2) {
            //     arr[minIndex] = temp;
            //     arr[arr.length - 1] = arr[i];
            // }

            count = 1;

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