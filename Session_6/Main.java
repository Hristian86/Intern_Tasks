/**
 * Main
 */
public class Main {

    // здача 11: да се модирицира имплементацията на selection sort 
    // така че на всяко обхождане на подмасива да намира също
    // минималния елемент и да го слага на последна позиция в подмасива.

    public static void main(String[] args) {
        // var arr = new int[]{2,3,5,3,7,9,5};
        // sort(arr);
        Calc();
    }

    private static void sort(int[] arr) {
        boolean swap = false;
        for (int i = 0; i < arr.length; i++) {
            var curMin = min(arr,i);
            var temp = arr[i];
            arr[i]  =  arr[curMin];
            arr[curMin] = temp;
        }
        
            var temp2 = arr[0];
            arr[0] = arr[arr.length - 1];
            arr[arr.length - 1] = temp2;
        
        for (var item : arr) {
            System.out.print(item + " ");
        }
    }
    
    private static int min(int[] arr, int n) {
        var min = n;
        var last = -1;
        var index = -1;
        var minElement = 0;
        var swaped = false;
        
        for (int i = n + 1; i < arr.length; i++) {
            if (arr[i] < arr[min]) {
                min = i;
            }
            
            // if (minElement < arr[min]) {
            //     index = i;
            //     last = arr[i];
            // }
        }

        // if (last != -1 && index != -1) {
        //     var temp = arr[index];
        //     arr[index] = arr[arr.length - 1];
        //     arr[arr.length - 1] = temp;
        //     swaped = true;
        //     last = -1;
        //     index = -1;
        // }

        return min;
    }

    private static void Calc() {
        int end = 126;
        var result = new int[end + 1];
        var visited = new boolean[end + 1];
        var divide = new int[end + 1];

        for (int i = 2; i < end; i++) {
            if (visited[i]) {
                continue;
            }

            result[i] = i;

            for (int j =  i * i; j < end; j+=i) {
                visited[j] = true;
                
            }
        }

        for (int s = 2; s < end; s++) {
            if (result[s] > 0) {   
                Divide(end, result, s, 0);
                // System.out.println(result[s]);
            }
        }
    }

    public static void Divide(int end, int[] result, int s, int occurrence) {
        if (end % result[s] == 0) {
            end = end / result[s];
            Divide(end, result, s, occurrence + 1);
        } else {
            if (occurrence > 0) {   
                System.out.println(s + " " + occurrence);
            }

            return;
        }
    }
}