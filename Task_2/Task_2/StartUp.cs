using System;
using InputReader;
using Interfaces;
using MainEngine.Interfaces;
using OutputWriter;
using Task_2.Engine.Core;

namespace Task_2
{
    internal class StartUp
    {
        internal static void Main(string[] args)
        {
            IReadable reader = new Input();
            IWriteable write = new Display();
            IDrawable engine = new EngineInit(reader.GetNumber());
            write.Print(engine.Run());
        }
    }
}
