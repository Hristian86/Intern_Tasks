// задача 8. имаме списък от хора (зададен като масив от стрингове),
// за всеки от който е дадено име, адрес, град, който изглежда така:
// Иван, София
// Петър, Пловдив
// Никола, София
// Деница, Варна
// Жельо, Пловдив
// Да напечатаме списъка с хора групирани по град. За всеки град първо печатаме града,
// и под него хората в от този град с 3 интервала преди името:
// Варна
//    Деница
// Пловдив
//    Жельо
// София
//    Иван
//    Никола
// Малко прилича на CSV задачата, но въобще не е същото, няма такива сложни случаи като кавички, интервали и \
// Не е проблем да се ползва вградената функция за сортиране както показах сутринта

public class People {
    private var city = "";
    private var name = "";

    init(_ city: String,_ name: String) {
        self.city = city;
        self.name = name;
    }
    
    func GetName() -> String {
        return self.name;
    }

    func GetCity() -> String {
        return self.city;
    }
}

public class PeopleCollection {
    private let arrPers = Array<People>()

    public func AddPerson(_ person: People) {
        self.arrPers.append(person);
    }
    
    public func PrintPeaople() {
        SortInfo();
        for item in arrPers {
            print(item.GetCity);
        }
    }

    private func SortInfo() {
        arrPers.sorted({ $0.city > $1.city });
    }
}

let prs = PeopleCollection();
prs.AddPerson("Иван","София");
prs.AddPerson("Иван","София");
prs.AddPerson("Иван","София");
prs.AddPerson("Иван","София");
prs.AddPerson("Иван","София");
prs.PrintPeaople();

// var arr = ["Иван": "София", "Петър": "Пловдив", "Никола": "София", "Деница": "Варна", "Жельо": "Пловдив"];
// print(arr);
// let res = SortedArr(arr);
// print(res);