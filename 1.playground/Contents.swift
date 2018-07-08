// Swift Basic

// 1.

let PI: Double = 3.14

// 2.

let x: Int = 2
let y: Int = 4

let average = (x + y)/2

/*
 3.
 
 The system infers the average as Double so maybe the type can be changed to Int first.
 
 10/3: the complier treats this as Int/Int so the result should be Int as well --> 10/3 = 3
 10.0/3.0: the complier treats this as Double/Double so the result should be Double as well --> 10.0/3.0 = 3.3333
*/

/*
 4.
 
 Bool
 String
 Int
 Double
*/

// 5.

var salary = 22000

salary += 28000

// 6. ==

// 7.

let numberOne = 10
let numberTwo = 3

let remain = numberOne % numberTwo

/*
 8.
 
 "let" is a constant and the content cannot be changed.
 "var" is a variable and the content can be changed.
*/

/*
 9. Naming conventions:
 Use camel casing
 No whitespace
 Don't start with numbers or special characters
*/





// Swift Collection and Control Flow

// Array

// 1,2.
var myFriends: [String] = ["Ian", "Bomi", "Kevin"]

// 3.
myFriends.append("Michael")

// 4.
myFriends.insert("Kevin", at: 0)

myFriends.remove(at: 3)

// I'm sure there's a better way.....

// 5.

for name in myFriends {
    print(name)
}


// 6.

/* If I want to know who is at index 5 (the sixth person) in the array,
 let name = myFriends[5]
Since there are only 4 people in the array, index 5 is out of range.
 */

// 7.
let first = myFriends[0]

// 8.
let last = myFriends.last







// Dictionary

// 1,2.

var myCountryNumber: [String: Int] = ["US": 1, "GB": 44, "JP": 81]

// 3.

myCountryNumber["GB"] = 0

// 4.

var emptyDictionary = [String: Int] ()

myCountryNumber = [:]









// For, While, Repeat

// 1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for number in lottoNumbers[3...5] {
    print(number)
}

// 2. While loop

// 3.
var index = 5

while index >= 0 {
    print(lottoNumbers[index])
    index -= 1
}


var indexOne = 0

while indexOne < lottoNumbers.count{
    print(lottoNumbers[indexOne])
    indexOne += 2
}

// 4.

var indexTwo = 5

repeat {
    print(lottoNumbers[indexTwo])
    indexTwo -= 1
} while indexTwo >= 0


var indexThree = 0

repeat {
    print(lottoNumbers[indexThree])
    indexThree += 2
} while indexThree < lottoNumbers.count




// If Statement

var isRaining = true

if isRaining == true {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Althoughit’s sunny, I still don’t want to work today.")
}








// Swithch

var jobLevel = [1, 2, 3, 4]

switch 3 {
case 1: print("Member")
case 2: print("Team Leader")
case 3: print("Manager")
case 4: print("Director")
default: print("We don't have this job")
}









// Function in Swift

// 1.

func greet(person: String) -> String{
    return "Hello, " + person + "."
}

greet(person: "Celeste")

// 2.

func multiply(a: Int, b: Int = 10) {
    print(a*b)
}

multiply(a: 3)

/* 3.
Parameter Label 是參數的名字，是function body裡實際上參考的值
Argument Label 用來描述或形容參數，使得整個function更易讀
*/

// 4. String and Double






// Others

// establish a GitHub repo: 按GitHub右上角＋然後取名、複製URL

/* Upload the local project:
 到terminal,在directory下創造一個remote: git remote add origin URL
 git push (remote name: origin) (branch name:master)
 
 git就被push到GitHub repo了！
 */












