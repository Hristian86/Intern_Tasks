using System;
using System.Collections.Generic;
using System.Text;
using Interfaces;

namespace InputReader
{
    public class Input : IReadable
    {

        private char[] nextYear;
        private int yearToCalcolate = 0;
        private string yearFromConsole;

        static Action<string> printMultiRow = message => Console.WriteLine(message);

        static Action<string> printOneRow = message => Console.Write(message);

        public int GetNumber()
        {
            int num = CheckNumber();
            return num;
        }

        private int CheckNumber()
        {
            while (true)
            {
                Console.Write("Please type a year. => ");
                this.yearFromConsole = Console.ReadLine();
                bool checkYear = int.TryParse(this.yearFromConsole, out this.yearToCalcolate);
                if (!checkYear)
                {
                    printOneRow("The input is not a valid year" + Environment.NewLine);
                }
                else
                {
                    break;
                }
            }

            char[] year = this.yearFromConsole.ToCharArray();
            this.nextYear = new char[year.Length];

            return this.yearToCalcolate += 1;
        }
    }
}
