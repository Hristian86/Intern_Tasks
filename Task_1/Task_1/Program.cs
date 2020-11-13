using System;

namespace Task_1
{
    class Program
    {
        static void Main(string[] args)
        {
            // The way i understand the question is that, the % of 5 are overlapping with % of 3 on 15, 30, 45, 60, 75, 90. If i undarstand correctly the question i think that % of 5 is overriding the % of 3
            for (int i = 1; i <= 100; i++)
            {
                if (i % 5 == 0)
                {
                    Console.WriteLine("Buzz");
                }
                else if(i % 3 == 0)
                {
                    Console.WriteLine("Fizz");
                }
                else
                {
                    Console.WriteLine(i);
                }
            }
        }
    }
}
