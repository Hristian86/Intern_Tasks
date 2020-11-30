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
//    Петър
// София
//    Иван
//    Никола
// Малко прилича на CSV задачата, но въобще не е същото, няма такива сложни случаи като кавички, интервали и \
// Не е проблем да се ползва вградената функция за сортиране както показах сутринта

public class Person {
    private var city = "";
    private var name = "";

    init(_ name: String,_ city: String) {
        self.city = city;
        self.name = name;
    }
    
    public func GetName() -> String {
        return self.name;
    }

    public func GetCity() -> String {
        return self.city;
    }
}

public class PersonCollection {
    private var PersonColl = [String: Array<Person>]();
    
    init() {}
    public func AddPerson(_ person: Person) {
        AddtoColl(person);
    }

    private func AddtoColl(_ person: Person) {
        var city: String = person.GetCity();
        let keyExists = self.PersonColl[city] != nil

        if !keyExists {
            self.PersonColl[city] = [person];
        } else {
            var ppl = self.PersonColl[city] ?? [];
            ppl.append(person);
            self.PersonColl.updateValue(ppl, forKey: city);
        }
    }
    
    public func PrintPeaople() {
        for city in self.PersonColl.sorted(by: { $0.key < $1.key }) {
            // Prints the city.
            print(city.key)
            for name in city.value.sorted(by: { $0.GetName() < $1.GetName() }) {
                // Prints the name of the Persons.
                print("   \(name.GetName())")
            }
        }
    }
}

let prs = PersonCollection();
prs.AddPerson(Person("Иван","София"));
prs.AddPerson(Person("Петър","Пловдив"));
prs.AddPerson(Person("Никола","София"));
prs.AddPerson(Person("Деница","Варна"));
prs.AddPerson(Person("Жельо","Пловдив"));
prs.PrintPeaople();