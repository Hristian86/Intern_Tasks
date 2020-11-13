using System;
using System.Collections.Generic;
using System.Text;

namespace Task_2.Engine.Core
{
    internal class EngineCore
    {
        private int calculateNextYear;

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
            while (true)
            {
                string nextYearToString = this.calculateNextYear.ToString();
                if (!CheckNextYear(nextYearToString))
                {
                    this.calculateNextYear += 1;
                }
                else
                {
                    return this.calculateNextYear;
                }
            }
        }

        private bool CheckNextYear(string nextYearToString)
        {
            for (int i = 0; i < nextYearToString.Length; i++)
            {
                int currentNumber = nextYearToString[i];
                for (int j = i + 1; j < nextYearToString.Length; j++)
                {
                    int checkingYear = nextYearToString[j];
                    if (checkingYear == currentNumber)
                    {
                        return false;
                    }
                }
            }

            return true;
        }
    }
}
