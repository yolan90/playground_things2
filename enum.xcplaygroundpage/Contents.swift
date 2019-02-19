import Foundation

/* enum
 We create a type for better code organization.
 Grouping related values
 Following the naming conventions first letter UpperCased
*/

enum Country {
    enum Asia {
        case indonesia
        case singapore
        case malaysia
        case china
        case thailand
    }
    enum Europe {
        case italy, france, portugal, germany
    }
}

let universityLocation : Country.Asia = Country.Asia.indonesia
let universityLocationSimplified = Country.Asia.indonesia
let napolyAcademy = Country.Europe.italy

enum Move {
    case up,down,left,right
}

var characterNextMove = Move.up

// In a switch exploring all enum cases, we don't need default
switch characterNextMove {
    case .up:
        print("Character move UP")
    case .down:
        print("Character move DOWN")
    case .left:
        print("Character move LEFT")
    case .right:
        print("Character move RIGHT")
}


// enum with associated values
enum DaysOfWeek: Int {
    case monday = 1
    case tuesday = 2
    case wednesday = 3
    case thursday = 4
    case friday = 5
    case saturday = 6
    case sunday = 7
}

let today = DaysOfWeek.tuesday
let alsoToday = DaysOfWeek.monday.rawValue

switch today {
    case .monday:
        "Rest day"
    case .wednesday:
        "Studying the track"
    case .friday:
        "Testing the car"
    case .sunday:
        "Let's RACE!"
    default:
        "Something else"
}

//Getting the enum case from the raw Value
let caseFromRawValue = DaysOfWeek(rawValue:6)!
print (caseFromRawValue)


//another things
//enum Area {
//    case volume(Int, Int, Int)
//    case width(Int, Int)
//}
//
//var info : Area = .volume(5,6,7)
//
//switch info {
//    case .volume: return (info.)
//    case .width: return (.volume.length * .volume.width)
//}


