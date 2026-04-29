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

@main
struct feem {
    static func main() {

        let dbPath = "Sources/SwiftPlayground/database.db"

            guard let dbQueue = try? DatabaseQueue(path: dbPath) else {
                fatalError("Could not open database.")}
        do{
            let dbQueue = try DatabaseQueue(path: dbPath)
            
            try dbQueue.read { db in
                let schema = db.dumpSchema()
                print(schema)
                }
            }catch{
            print(error)
        } // end of do
    }// end of main
} 