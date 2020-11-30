protocol IMain {
    func Main() -> String;
}

public class StartUp: IMain {

    // задача 5: даден е масив с правоъгълници,
    // за всеки от който е са зададени координатите
    // на горния ляв и долния десен ъгъл, както и цвета му.
    // правоъгълницте се рисуват върху екрана един след друг,
    // като могат да се препокриват. първо се рисува последния елемент в масив,
    // върху него е следващия и най отгоре е първия елемент.
    // да се напише функция която получава координати на точка и връща цвета на тази точка,
    // ако тя е попада върху правоъгълник, ако не undefinеd. цветовете са зададени като стрингове.
    private var list = Array<RectAngle>();

    public func Main() -> String {
        let color = AddrectAngle(1,2);
        return color;
    }

    private func AddrectAngle (_ x: Int,_ y: Int) -> String {
            // Hard coded
            let crd1 = [ 1, 3 ];
            let crd2 = [ 2, 2 ];
            let color = "green";

            // 4  
            // 3 |x   |
            // 2 |o  x|
            // 1     
            // 0, 1, 2, 3, 4, 5

            let crd21 = [ 1, 4 ];
            let crd22 = [ 3, 2 ];
            let color2 = "red";

            let crd31 = [ 2, 5 ];
            let crd32 = [ 4, 4 ];
            let color3 = "blue";

            self.list.append(RectAngle(crd1, crd2, color));
            self.list.append(RectAngle(crd21, crd22, color2));
            self.list.append(RectAngle(crd31, crd32, color3));

            // var x = x;
            // var y = y;
            for item in list {
                // x1 y1 - first cordinates 1, 3
                // x2 y2 - second cordinates 2, 2
                // x  y - searched point
                
                // 4  
                // 3 |x   |
                // 2 |o  x|
                // 1     
                // 0, 1, 2, 3, 4, 5

                // x = 1, y = 2
                if (x >= item.Cord1X() && x <= item.Cord2X() && y >= item.Cord1X() && y <= item.Cord2Y())
                {
                    return item.Color();
                }
            }

            return("undefined");
    }
    
}

public class RectAngle {
        private var cordinates1 = Array<Int>();
        private var cordinates2 = Array<Int>();
        private var color = "";

        init(_ cordinates1: [Int],_ cordinates2: [Int],_ color: String)
        {
            self.cordinates1 = cordinates1;
            self.cordinates2 = cordinates2;
            self.color = color;
        }

        public func Cord1X() -> Int {
            return self.cordinates1[0];
        }

        public func Cord1Y() -> Int {
            return self.cordinates1[1];
        }

        public func Cord2X() -> Int {
            return self.cordinates2[0];
        }

        public func Cord2Y() -> Int {
            return self.cordinates2[1];
        }

        public func Color() -> String {
            return self.color;
        }
}

let startUp = StartUp();
let result = startUp.Main();
print(result);