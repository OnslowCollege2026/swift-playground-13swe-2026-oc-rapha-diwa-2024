// The Swift Programming Language
// https://docs.swift.org/swift-book
// Made by raoha
// 22.04.26
// Summative assessment
import Foundation
import GRDB

/// Clear the console screen.
func clear() {
    system("clear")
}

/// people borrowing.
struct Borrower : Identifiable, Codable,  FetchableRecord, PersistableRecord {

let id: Int
let firstName: String
let lastName: String
let emailAddress: String

enum CodingKeys: String, CodingKey {
        case id = "Borrower ID"
        case firstName = "First Name"
        case lastName = "Last Name"
        case emailAddress = "Email Address"
    }
}
/// Items to be borrowed
struct Book : Identifiable, Codable, FetchableRecord, PersistableRecord {

let id: Int
let title: String
let authorFirstName: String
let authorLastName: String

enum CodingKeys: String, CodingKey {
    case id = "bookId"
    case title
    case authorFirstName
    case authorLastName 


enum Columns {
        static let id = "Book ID"
        static let title = "Title"
        static let authorFirstName = "Author F.name"
        static let authorLastName = "Author L.name"
    }
}


/// 
struct Loan {
let id: Int
let dateBorrowed: String
let dateDue: Int

}


//FUNCTIONS

/// Function that
/// 

func mainMenu() {
var inMainMenu = true
while inMainMenu{
clear()

print("""
LIBARY
==========

A. BOOKS
B. LOANS
C. BORROWERS
X. QUIT

""")

let buh = readLine()

switch buh {


case "A":
bookMenu()

case "B":
print("chose loan menu")
case "c":
print("chose borrowers menu")
case "x":
inMainMenu = false
print("quited 💔")

default:
print("ikeys")
}


}
}


func bookMenu() {

var inBookMenu = true

print("""

BOOKS
=======

1. See all books
2. Search books

""")

let buh = readLine()

switch buh {


case "1":
print("print all books")


case "2":
print("Search books")
case "x":
inBookMenu = false
print("back to main..")
sleep(2)

default:
print("ikeys")
}


}

func borrowerMenu() {

var inBorrowerMenu = true

print("""

BORROWERS
=======

1. Search borrowers
2. Edit borrower record
3. Register new borrower
4. Delete borrower

""")

let buh = readLine()

switch buh {


case "1":
print("Search")


case "2":
print("edit")

case "3":
print("register")

case "4":
print("delete")

case "x":
inBorrowerMenu = false
print("back to main..")
sleep(2)

default:
print("ikeys")
}
}




/// FUNCTION THAT ALLOWS USER TO BORROW
/// 
/// 

/// FUNCTION THAT ALLOWS USER TO SEARCH
/// 

// func searchBook(){

//     try dbQueue.read { db in
//         let book = try Book.fetchOne(db, key: studentId)
//         if let book {
//             print("Found student: \(student.name)")
//         } else {
//             print("No student with id \(studentId)")
//         }
//     }
// }


/// FUNCTION THAT MAKES NEW BORROWER
/// 
/// 
func addBorrower(dbQueue: DatabaseQueue) {
    
    do{

        try dbQueue.write { db in
        // Insert new row
        let newBorrower = Borrower(id: 67, firstName: "kar", lastName: "dih", emailAddress: "mgkatrikplays@gmail")
        try newBorrower.insert(db)
        }
    } catch {
        print("keys")
    }
}

/// FUnction to print bookies

func printBooks() {
    
}

///Function that gets user input
func userInput(){


}

@main
struct feem {
    static func main() {
        let dbPath = "Sources/SwiftPlayground/database.db"
        
    do{
        let dbQueue = try DatabaseQueue(path: dbPath) 
                
                mainMenu()
        } catch {

            print("keys now")
            print(error)
        }

    }// end of main

}