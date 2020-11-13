using System;
using System.Collections.Generic;
using System.Text;
using Interfaces;

namespace OutputWriter
{
    public class Display : IWriteable
    {
        static Action<string> printOneRow = message => Console.Write(message);

        static Action<string> printMultyRow = message => Console.WriteLine(message);

        public void Print(int year)
        {
            printOneRow("Good bye my friend, see you next happy ");
            printOneRow(year.ToString().Trim());
            printOneRow(" year");
        }
    }
}