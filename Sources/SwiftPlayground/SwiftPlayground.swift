// The Swift Programming Language
// https://docs.swift.org/swift-item

// Made by raoha
// 24.06.26
// Summative assessment
import Foundation
import GRDB

/// Clear the console screen.
func clear() {
    system("clear")
}

func userInput(ask: String) {

}


/// people borrowing.
struct Borrower : Identifiable, Codable,  FetchableRecord, PersistableRecord, CustomStringConvertible {

    let id: Int
    let givenName: String
    let familyName: String
    let emailAddress: String
    let yearLevel: String
    let borrowerType: String

    enum CodingKeys: String, CodingKey {
            case id = "Borrower ID"
            case givenName = "Given name"
            case familyName = "Family name"
            case emailAddress = "Email address"
            case yearLevel = "Year level"
            case borrowerType = "borrowerType"
        }

    var description: String {
        return """
        ID: \(id)
        Name: \(firstName) \(lastName)
        Email Address: \(emailAddress)
        """
        }
}

/// Items to be borrowed
struct Item : Identifiable, Codable, FetchableRecord, PersistableRecord {

let id: Int
let itemName: String
let itemCategory: String
let itemCondition: String

enum CodingKeys: String, CodingKey {
    case id = "itemId"
    case itemName
    case itemCategory
    case itemCondition
}

enum Columns {
        static let id = "Item ID"
        static let itemName = "Item name"
        static let itemCondition = "Item condition"
        static let itemCategory = "Item Category"
    }
}

/// 
struct Loan {
let id: Int
let dateBorrowed: String
let dateDue: String
let dateReturned: String

enum CodingKeys: String, CodingKey {
    case id = "loanID"
    case dateBorrowed
    case dateDue
    case dateReturned
}

enum Columns {
        static let id = "Loan ID"
        static let dateBorrowed = "Loan date"
        static let dateDue = "Due date"
        static let dateReturned = "Return date"
    }
}


//FUNCTIONS

/// Function that
/// 
/// 
func mainMenu(dbQueue:DatabaseQueue) {
var inMainMenu = true
while inMainMenu{
//clear()

print("""
MELVIL DEWEY SIMULATOR
==========

A. ITEMS
B. LOANS
C. BORROWERS
X. QUIT

""")

let option = readLine()

switch option {


case "A":
itemMenu()

case "B":
loanMenu()

case "C":
borrowerMenu(dbQueue: dbQueue)

case "x":
inMainMenu = false
print("quited 💔")

default:
print("ikeys")
}


}
}


func itemMenu() {

var inItemMenu = true

print("""

ITEMS
=======

1. See all items
2. Search items

""")

let option = readLine()

switch option {


case "1":
print("print all items")


case "2":
print("Search items")
case "x":
inItemMenu = false
print("back to main..")
sleep(2)

default:
print("ikeys")
}


}

func borrowerMenu(dbQueue: DatabaseQueue) {

var inBorrowerMenu = true

print("""

BORROWERS
=======

1. Search borrowers
2. Edit borrower record
3. Register new borrower
4. Delete borrower
5. Show all borrowers
X - back to main

""")

let option = readLine()

switch option {


case "1":
print("Search")


case "2":
print("edit")

case "3":
addBorrower(dbQueue: dbQueue)
print("register")

case "4":
print("delete")

case "5":
printBorrowers(dbQueue: dbQueue)

case "x":
inBorrowerMenu = false
print("back to main..")
sleep(2)

default:
print("ikeys")
}
}

func loanMenu() {

var inLoanMenu = true

print("""

LOAN
=======

1. Loan item
2. Return item
x return ti main

""")

let option = readLine()

switch option {


case "1":
print("Loan a item")


case "2":
print("Return a item")


case "x":
inLoanMenu = false
print("back to main..")
sleep(2)

default:
print("ikeys")
}
}



/// FUNCTION THAT ALLOWS USER TO SEARCH
/// 

// func searchItem(dbQueue: DatabaseQueue){
    
// let itemId = readLine()
//     do{

//         try dbQueue.read { db in
//             let item = try Item.fetchOne(db, key: itemId)
//             if let item {
//                 print("Found item: \(item.name)")
//             } else {
//                 print("No student with id \(itemId)")
//             }
//         }
//     }
// }

/// FUNCTION THAT MAKES NEW BORROWER
/// 
/// 
// func addBorrower(dbQueue: DatabaseQueue) {
    
//     do{


//         try dbQueue.write { db in
//         // Insert new row
//         let newBorrower = Borrower(id: 67, firstName: "kar", lastName: "dih", emailAddress: "mgkatrikplays@gmail")
//         try newBorrower.insert(db)
//         }
//     } catch {
//         print("keys")
//     }
// }


func printBorrowers(dbQueue: DatabaseQueue) {
    do{
        try dbQueue.read {db in
            let allBorrowers =  try Borrower.fetchAll(db)
        
            for borrower in allBorrowers {
                print(borrower)
            }
        
        }

    } catch {
        print("keys")
    }
}



/// FUnction to print itemies

func printItems() {
    
}



@main
struct feem {
    static func main() {
        let dbPath = "Sources/SwiftPlayground/database.db"
        
    do{
        let dbQueue = try DatabaseQueue(path: dbPath) 
                
                mainMenu(dbQueue: dbQueue)
        } catch {

            print("keys now")
            print(error)
        }

    }// end of main

}

