// Objective-Oriented Swift
// 1.

enum Gender {
    case male
    case female
    case undefined
}


class Animal {
    var gender: Gender
    
    func eat() -> String {
        return "I eat everything!"
    }
    
    init(gender: Gender){
        self.gender = gender
    }
}

let animal = Animal(gender: Gender.male)
print(animal.eat())

// 2.

class Elephant: Animal {
    override func eat() -> String {
        return "I eat grass!"
    }
}

let elephant = Elephant(gender: Gender.female)
print(elephant.eat())

class Tiger: Animal {
    override func eat() -> String {
        return "I eat meat!"
    }
}

let tiger = Tiger(gender: Gender.female)
print(tiger.eat())

class Horse: Animal {
    override func eat() -> String {
        return "I eat carrots!"
    }
}

let horse = Horse(gender: Gender.male)
print(horse.eat())

// 3.

class Zoo {
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: Gender.male))


zoo.weeklyHot = tiger

zoo.weeklyHot = elephant

zoo.weeklyHot = horse



/*
 4. Objected-oriented 在程式中包含各種獨立但是又可以相互呼叫的物件，
 每個物件有它的property和method，都可以接受資料、處理並將其轉達給其他物件。
 物件把複雜的程式及數據封裝在其中，讓我們能夠更簡單的設計並維護程式。
 
 5. Struct 不能繼承而且有memberwise initializer無需加init. 通常是拿來組織簡單data時用的。
    Struct是value type
    Class是reference type (第9題說明)
 
 6. Instance method需要先創造一個特定的type(Class, Structure...)
 然後創造一個Instance後才能call instance method;
    Type method是不需要另外創造一個instance就能夠直接call on type
 
 7. Initializer的目的是在創一個特定type的instance時賦值給所有的property
 讓object ready for use
 
 8. self is used to refer to properties inside an object
 
 9. Value type之間是獨立記憶的
 例如：
 var number1 = 1
 var number2 = number1  //完全複製number1變成number2
 var number1 += 3  // 4
 number2還是1
 
 但是複製reference type實際上是創造了一個共享的分身，兩者共用一套數據，
 因此修改其中任何一個會影響到另一個
 */



// Enumerations and Optionals in Swift

// 1.

enum Gasoline: String {
    case type92 = "92"
    case type95 = "95"
    case type98 = "98"
    
    func getPrice(type: Gasoline) -> String {
        switch self {
        case .type92: return "30"
        case .type95: return "31"
        case .type98: return "32"
        }
    }
}

Gasoline.type92.rawValue

/* Associate value
 
 Each member of the enum can store associated values of other types with this member value.
 This gives us a way to store custom information for enum case and contain any kind of information.
 
 eg.
 enum XXX {
 case abc(type)
 }
 
*/


// 2.

class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    }

class People {
    var pet: Pet?
}


// guard let

func somePet(of people: People) {
    guard let pet = people.pet else {
        print("No pet")
        return
    }
        print("The pet is named \(Pet.init(name: "Doo"))")
    }




// if let

let joe = People()
joe.pet = Pet(name: "Doo")

if let joesPet = joe.pet?.name {
    print("Joe's pet is named \(joesPet)")
} else {
    print("No pet, no name.")
}



// Protocol in Swift

protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    func arrestCriminals() {
       
    }
    
}

struct Engineer: ToolMan {
    func fixComputer() {
        print("Engineer")
    }
}

let engineer = Engineer()

let person = Person(name: "Steven", toolMan: engineer)




// Error Handling in Swift

enum GuessNumberGameError: Error {
    
    case wrongNumber
    
}

class GuessNumberGame {
    
    var targetNumber = 10
    
    func guess(number: Int) throws {
        
        guard number == targetNumber else {
            
            throw GuessNumberGameError.wrongNumber
            
        }
        
        print("Guess the right number: \(targetNumber)")
        
    }
}

let guessNumberGame = GuessNumberGame()

try guessNumberGame.guess(number: 20)




