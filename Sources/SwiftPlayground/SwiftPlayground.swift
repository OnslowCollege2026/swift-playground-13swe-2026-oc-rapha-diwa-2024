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

func butt(){
        let dbPath = "Sources/SwiftPlayground/database.db"

            guard let dbQueue = try? DatabaseQueue(path: dbPath) else {
                fatalError("Could not open database.")}
        do{
            let dbQueue = try DatabaseQueue(path: dbPath)
            
            // try dbQueue.read { db in
            //     let schema = try db.dumpSchema()
            //     print(schema)
            //     }
            }catch{
            print(error)
        } // end of do
}

//FUNCTIONS

/// Function that
/// 

func menu() {

print("""
LIBARY
==========

A. VIEW BOOKS 
B. LOAN BOOKS
C.
X. QUIT

""")
}


/// FUNCTION THAT ALLOWS USER TO BORROW
/// 
/// 

/// FUNCTION THAT ALLOWS USER TO SEARCH
/// 

// func searchBook(){

//     try dbQueue.read { db in
//         let book = try Book.fetchOne(db, key: studentId)
//         if let student {
//             print("Found student: \(student.name)")
//         } else {
//             print("No student with id \(studentId)")
//         }
//     }
// }


/// FUNCTION THAT MAKES NEW BORROWER
/// 
/// 
func addBorrower(in: dbQueue) {
    try dbQueue.write { db in
    // Insert new row
    var newBorrower = Student(id: 67, firstName: "kar", lastName: "dih", emailAddress: "mgkatrikplays@gmail")
    try newBorrower.insert(db)
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




    menu()
    addBorrower()
    }// end of main
} 