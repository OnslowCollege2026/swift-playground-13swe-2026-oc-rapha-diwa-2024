// The Swift Programming Language
// https://docs.swift.org/swift-book
// Made by raoha
// 22.04.26
// Summative assessment
import Foundation
import GRDB

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
let code: Int
let author: String
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
var running = true
while running{
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
print("chose bookmenu")

case "B":
print("chose loan menu")
case "c":
print("chose borrowers menu")
case "x":
running = false
print("quited 💔")

default:
print("ikeys")
}


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