using System;
using System.Collections.Generic;
using System.Text;

namespace Task_2.Engine.Core
{
    internal class EngineCore
    {
        private int calculateNextYear;
        private ISet<char> unique;

        internal EngineCore(int year)
        {
            this.calculateNextYear = year;
        }

        internal int Init()
        {  
            return CalculateYear();
        }

        private int CalculateYear()
        {
            this.unique = new HashSet<char>();
            while (true)
            {
                string nextYearToString = this.calculateNextYear.ToString();
                if (!CheckNextYear(nextYearToString))
                {
                    this.calculateNextYear += 1;
                    this.unique.Clear();
                }
                else
                {
                    this.unique.Clear();
                    return this.calculateNextYear;
                }
            }
        }

        private bool CheckNextYear(string nextYearToString)
        {
            // Here i change from double for cycles to one hashset of char
            for (int i = 0; i < nextYearToString.Length; i++)
            {
                this.unique.Add(nextYearToString[i]);
            }

            if (this.unique.Count == nextYearToString.Length)
            {
                return true;
            }

            return false;
        }
    }
}
