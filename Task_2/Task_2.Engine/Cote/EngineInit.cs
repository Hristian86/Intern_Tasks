using System;
using System.Collections.Generic;
using System.Text;
using MainEngine.Interfaces;

namespace Task_2.Engine.Core
{
    public class EngineInit : IDrawable
    {
        private EngineCore engineCore;

        public EngineInit(int year)
        {
            this.engineCore = new EngineCore(year);
        }

        public int Run()
        {
            int yearToReturn = this.engineCore.Init();
            return yearToReturn;
        }
    }
}
