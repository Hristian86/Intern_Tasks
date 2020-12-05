import java.util.*;

/**
 * main
 */
public class Main {

    static String[] hexa = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"};

    // 16. да се генерират следната последователност
    // 0,1,2,3,4,5,6,7,8,9,10,22,11,20,13,24,15...
    // правилто за всяко следващо число е:
    // - да не е било използвано вече
    // - да не съдържа цифрите на последно добавеното число
    // - ако повече от 1 число отговаря на условието да се ползва най малкото
    // Пример:
    // 1-10 - всяко следващо няма общи цифри с предишното
    // от 11 нататък, първото което няма 1 е 22
    // след 22 - следващото, което няма 2 е 11. 33 също отговаря на условието,
    //  но 11 е по малко и ползваме него
    // Да се напише функция връща в масив първите n числа от тази поредица.
    // static private int distinctNum = 0;
    static private List list = new ArrayList<>();
    static private boolean[] visited = new boolean[31];
    static private boolean isFound = false;
    static private Integer previosNum = 10;

        
    // 2, 5, 8, 11, 14, 17, 20, opt = 23

    // 2, 4, 3, 5, 4, 6, 5, ..  3

    // 4 +  8 + 9 - 3 = 18
    // 8 + 9 + 18 - 4 = 31
    // 9 + 18 + 19 - 8 = 46.. 38
    // 18 + 1 19 == 38 ... + 1 =  39
    // 38 + 19 + 18 - 9 = 

    // 3, 4, ,8, 9, 18, 19, 38 ..  ? 39

    // 2, 4 ,3, 5, 6, 8, 7 ... 9

    // 2, 3 ,4 ,6, 7, 10 , 11 ,... 16 - 15

//     тест2 задача1. да се напише функция с параметри два стринга и 
//     връща стринг съдържащ общите букви от двта стринга без повторения.

// тест2 задача2. да се напише функция с параметър масив и число която
//  извършва ротация на масива, с толкова стъпки колкото е чслото.
// възможна оптимизация е да се направи без помощен масив.
// няма да се зачитат решения които ползват функциите на класа Array,
//  като remove, append, a[i...j], reverse и т.н.
// Пример:
// [1, 2, 3], 1 -> [2, 3, 1]
// [1, 2, 3], 2 -> [3, 1, 2]

// тест2 задача 3: да се напише функция която извършва умножение на 2 числа като
//  се разложат на цифри и се приложят правилата за умножение които се учат в училище.


    public static void main(String[] args) {
        
        // split(255);
        // sequence(); 
        // var s = next(10, 30);
        // IdkDamage();
        // binarySrch();
        // name();
        var arr = new int[]{1,2,3,4,5,6};
        int num = 8;
        var arrs = rotate(arr, num);

    }

    public static int [] rotate (int [] arr , int num){
        int position = 0;

        if (num > arr.length){
            position = arr.length  - (num % arr.length);
        } else {
            position = arr.length - num ;
        }

        int [] arr2 = new int [arr.length];
        arr2[position] = arr[0];
        position+=1;

        for (int i = 1; i < arr.length ; i++) {
            if (position >= arr2.length){
                position = 0;
            }

            arr2[position] = arr[i];
            position++;
        }

        return arr2;
    }

    // New method
    public static void name() {
        var temp = 0;
        var rotate = 1;
        var arr = new int[]{1,2,3};
        int rotateCount = rotate > arr.length ? rotate % arr.length - 1 : rotate - 1;

        for (int i = 0; i <= rotateCount; i++) {

                temp = arr[0];
                for (int j = 0; j < arr.length - 1; j++) {
                    arr[j] = arr[j + 1];
                }
    
            arr[arr.length - 1] = temp;
        }
        
        for (var it : arr) {
            System.out.print(it + " ");
        }

        System.out.println();
    }    

    public static void binarySrch() {

        BinarySearch ob = new BinarySearch(); 
        int arr[] = { 2, 3, 4, 10, 40 }; 
        int n = arr.length; 
        int x = 10; 
        int result = ob.binarySearch(arr, 0, n - 1, x); 

        if (result == -1) 
            System.out.println("Element not present"); 
        else
            System.out.println("Element found at index " + result); 

    }



    public static int next(int num, int max) {

        // to do numbers form 0 to 10
        // while (num < Int.max) {
            //10,22,11,20,13,24...
            var currNum = 10;
            for (int i = 10; i < max; i++) {

                if (!visited[i]) {
                    var distinctDigits = distinct(i, max, previosNum);
                    System.err.println(previosNum);
                    currNum = previosNum;
                }

                isFound = false;
            }

            // var totalDigits = count(num + 1);
    
            // if (distinctDigits == totalDigits) {
            //     return num + 1;
            // } else {
            //     num += 1;
            // }
        // }

        return -1;
    }

    public static int distinct(int num, int max, Integer currentNum) {

        if (num > max) {
            return 0;
        }

        var unique = new HashSet<>();
        var length = currentNum.toString().length();
        
        // 10
        var reserveNum = currentNum;
        var reserveNum2 = num;
        var reserveNum3 = num;

        var tempNum = reserveNum3 % 10;
        
        while (reserveNum > 0) {
            var uniqueNum = reserveNum % 10;

            if (!unique.contains(uniqueNum)) {
                unique.add(uniqueNum);
            }

            reserveNum2 /= 10;
            reserveNum /= 10;
        }
        
        // new variable for tempNum
        
        while (length > 0) {

            if (unique.contains(tempNum)) {
                distinct(num + 1, max, currentNum);
            }

            // check if it will be out of bounds
            // This is useless :) 

            // for (int i = num + 1; i <= max; i++) {
            //     var j = i;
            //     var splitJ = j % 10;

            //     while (j > 0) {
                    
            //         if (tempNum == splitJ) {
            //             j = 0;
            //             isFound = true; // fix the continue
            //         } else {
            //             isFound = false;
            //         }

            //         splitJ = j / 10;
            //         j /= 10;
            //     }

            //     if (!isFound) {

            //         break;
            //     }
            // }

            length -= 1;
            tempNum = reserveNum3 / 10;
        }

        if (!isFound) {
            if (!visited[num]) {   
                list.add(num);
                previosNum = num;
                visited[num] = true;
                isFound = true;
            } else {
                distinct(num + 1, max, currentNum);
            }
        }

        return num;
    }

    public static void sequence() {
        
        var a = 30;
        var arr = new int[a];

        for (int i = 0; i < a; i++) {
            
            var t = i;
            
            if (t > 9) {
                while (t > 0) {
                    var s = t % 10;
                    var next = i + 1;

                    if (t + 1 <= a) {
                        while (next > 0) {
                            var nextRes = next % 10;
                            // something
                            if (s == nextRes) {
                                t += 1;
                            }
                            break;
                        }
                        next /= 10;
                        

                    }
                    arr[i] = t;
                    
                    s /= 10;
                }
            } else {
                arr[i] = t;
            }
        }
    }

    private static String split(int num) {
        var result = "";
        var counter = num;

        if (num < 16) {
            result += hexa[num];
        } else {
            result += hexa[num % 16];
            result += hexa[num / 16];
        }

        System.out.println(result);
        return "1";
    }

    private static void IdkDamage() {
        boolean isValidInput = true;
        long result = 0;
        long finalResult = 0;
        List<String> allowedStrings = Arrays.asList
        (
        "zero","one","two","three","four","five","six","seven",
        "eight","nine","ten","eleven","twelve","thirteen","fourteen",
        "fifteen","sixteen","seventeen","eighteen","nineteen","twenty",
        "thirty","forty","fifty","sixty","seventy","eighty","ninety",
        "hundred","thousand","million","billion","trillion"
        );
        String input="One hundred two thousand and thirty four";
        if(input != null && input.length()> 0)
        {
            input = input.replaceAll("-", " ");
            input = input.toLowerCase().replaceAll(" and", " ");
            String[] splittedParts = input.trim().split("\\s+");
            for(String str : splittedParts)
            {
                if(!allowedStrings.contains(str))
                {
                    isValidInput = false;
                    System.out.println("Invalid word found : "+str);
                    break;
                }
            }
            if(isValidInput)
            {
                for(String str : splittedParts)
                {
                    if(str.equalsIgnoreCase("zero")) {
                        result += 0;
                    }
                    else if(str.equalsIgnoreCase("one")) {
                        result += 1;
                    }
                    else if(str.equalsIgnoreCase("two")) {
                        result += 2;
                    }
                    else if(str.equalsIgnoreCase("three")) {
                        result += 3;
                    }
                    else if(str.equalsIgnoreCase("four")) {
                        result += 4;
                    }
                    else if(str.equalsIgnoreCase("five")) {
                        result += 5;
                    }
                    else if(str.equalsIgnoreCase("six")) {
                        result += 6;
                    }
                    else if(str.equalsIgnoreCase("seven")) {
                        result += 7;
                    }
                    else if(str.equalsIgnoreCase("eight")) {
                        result += 8;
                    }
                    else if(str.equalsIgnoreCase("nine")) {
                        result += 9;
                    }
                    else if(str.equalsIgnoreCase("ten")) {
                        result += 10;
                    }
                    else if(str.equalsIgnoreCase("eleven")) {
                        result += 11;
                    }
                    else if(str.equalsIgnoreCase("twelve")) {
                        result += 12;
                    }
                    else if(str.equalsIgnoreCase("thirteen")) {
                        result += 13;
                    }
                    else if(str.equalsIgnoreCase("fourteen")) {
                        result += 14;
                    }
                    else if(str.equalsIgnoreCase("fifteen")) {
                        result += 15;
                    }
                    else if(str.equalsIgnoreCase("sixteen")) {
                        result += 16;
                    }
                    else if(str.equalsIgnoreCase("seventeen")) {
                        result += 17;
                    }
                    else if(str.equalsIgnoreCase("eighteen")) {
                        result += 18;
                    }
                    else if(str.equalsIgnoreCase("nineteen")) {
                        result += 19;
                    }
                    else if(str.equalsIgnoreCase("twenty")) {
                        result += 20;
                    }
                    else if(str.equalsIgnoreCase("thirty")) {
                        result += 30;
                    }
                    else if(str.equalsIgnoreCase("forty")) {
                        result += 40;
                    }
                    else if(str.equalsIgnoreCase("fifty")) {
                        result += 50;
                    }
                    else if(str.equalsIgnoreCase("sixty")) {
                        result += 60;
                    }
                    else if(str.equalsIgnoreCase("seventy")) {
                        result += 70;
                    }
                    else if(str.equalsIgnoreCase("eighty")) {
                        result += 80;
                    }
                    else if(str.equalsIgnoreCase("ninety")) {
                        result += 90;
                    }
                    else if(str.equalsIgnoreCase("hundred")) {
                        result *= 100;
                    }
                    else if(str.equalsIgnoreCase("thousand")) {
                        result *= 1000;
                        finalResult += result;
                        result=0;
                    }
                    else if(str.equalsIgnoreCase("million")) {
                        result *= 1000000;
                        finalResult += result;
                        result=0;
                    }
                    else if(str.equalsIgnoreCase("billion")) {
                        result *= 1000000000;
                        finalResult += result;
                        result=0;
                    }
                    else if(str.equalsIgnoreCase("trillion")) {
                        result *= 1000000000000L;
                        finalResult += result;
                        result=0;
                    }
                }
                finalResult += result;
                result=0;
                System.out.println(finalResult);
            }
        }
    }
}

class BinarySearch { 
    // Returns index of x if it is present in arr[l.. 
    // r], else return -1 
    int binarySearch(int arr[], int l, int r, int x) 
    { 
        if (r >= l) { 
            int mid = l + (r - l) / 2; 
  
            // If the element is present at the 
            // middle itself 
            if (arr[mid] == x) 
                return mid; 
  
            // If element is smaller than mid, then 
            // it can only be present in left subarray 
            if (arr[mid] > x) 
                return binarySearch(arr, l, mid - 1, x); 
  
            // Else the element can only be present 
            // in right subarray 
            return binarySearch(arr, mid + 1, r, x); 
        } 
  
        // We reach here when element is not present 
        // in array 
        return -1; 
    } 
}