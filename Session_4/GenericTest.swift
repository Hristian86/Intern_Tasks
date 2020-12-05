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
    private var address = Address<String>()
    private var name = "";

    init(_ name: String,_ city: String) {
        self.name = name;
        self.address.AddCity(city)
    }
    
    public func GetName() -> String {
        return self.name;
    }

    public func GetCity() -> String {
        return self.address.GetCity(0) ?? "";
    }
}

internal class Address<T> {
    private var address = Array<T>();

    init() {}
    internal func GetCity(_ defaultAddress: Int) -> T? {
        return self.address[defaultAddress] ?? nil;
    }
    
    internal func AddCity(_ city: T) -> Int {
        self.address.append(city);
        return self.address.count
    }
}

public class UserService {
    private var userRepository = [String: Array<Person>]();
    
    init() {}
    public func AddPerson(_ person: Person) {
        InsertPerson(person);
    }

    private func InsertPerson(_ person: Person) {

        // Adding to dictionary.
        var city: String = person.GetCity();
        let cityExists = self.userRepository[city] != nil

        if !cityExists {
            // Initial state of a given city.
            self.userRepository[city] = [person];
        } else {
            // Update the collection of Persons.
            var ppl = self.userRepository[city] ?? [];
            ppl.append(person);
            self.userRepository.updateValue(ppl, forKey: city);
        }
    }
    
    public func PrintPeaople() {
        for city in self.userRepository.sorted(by: { $0.key < $1.key }) {
            // Prints the city.
            print(city.key)
            for peopleFormCity in city.value.sorted(by: { $0.GetName() < $1.GetName() }) {
                // Prints the names of the Persons.
                print("   \(peopleFormCity.GetName())")
            }
        }
    }
}

let userService = UserService();
userService.AddPerson(Person("Иван","София"));
userService.AddPerson(Person("Петър","Пловдив"));
userService.AddPerson(Person("Никола","София"));
userService.AddPerson(Person("Деница","Варна"));
userService.AddPerson(Person("Жельо","Пловдив"));
userService.AddPerson(Person("Жельо","София"));
userService.PrintPeaople();