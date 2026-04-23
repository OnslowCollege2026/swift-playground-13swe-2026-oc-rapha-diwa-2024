// The Swift Programming Language
// https://docs.swift.org/swift-book
// Made by raoha
// 22.04.26
// Summative assessment
import Foundation
import GRDB


struct Borrower : Identifiable, Codable,  FetchableRecord, PersistableRecord {

let id: Int
let firstName: String
let lastName: String
let emailAddress: String

}

struct Item {

let id: Int
let itemName: String
let itemNum: Int
}

struct Loan {
let id: Int
let date: String

}

@main
struct feem {
    static func main() {

        let dbPath = "Sources/SwiftPlayground/database.db"

            guard let dbQueue = try? DatabaseQueue(path: dbPath) else {
                fatalError("Could not open database.")}
        do{
            let dbQueue = try DatabaseQueue(path: dbPath)
            
            try dbQueue
        }
    }
}