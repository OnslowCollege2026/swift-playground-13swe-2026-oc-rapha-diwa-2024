// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import GRDB

/// A reservation at the cafe. 
struct Purchaser : Identifiable, Codable, FetchableRecord, PersistableRecord {
    /// The purchaser ID.
    let id: Int
    /// The name of the customer.
    var name: String
    /// The number of customers.
    var count: Int
    /// The name of the reserved table.
    var reservedTable: String

    enum CodingKeys: String, CodingKey {
        case id = "purchaserID"
        case name = "Name"
        case count = "Count"
        case reservedTable = "REversedTable"
    }
}

struct Order : Identifiable, Codable, FetchableRecord, PersistableRecord {
    /// The Order ID.
    let id: Int
    /// Purchaser ID - FOreign key
    var purchaserID: Int
    /// Price
    var amount: Double

    enum CodingKeys: String, CodingKey {
        case id = "OrderID"
        case purchaserID = "purchaserID"
        case amount = "Amount"
    }
}

struct Items : Identifiable, Codable, FetchableRecord, PersistableRecord {
    /// The Item ID.
    let id: Int
    /// Name of item.
    let name: String
    /// Price of item.
    let price: Double

    enum CodingKeys: String, CodingKey {
        case id = "ItemID"
        case name = "Name"
        case price = "Price"
    }
}

struct OrderLine : Codable, FetchableRecord, PersistableRecord {
    /// The purchaser ID.
    let orderId: Int
    let itemId: Int
    let quantity: Int

    enum CodingKeys: String, CodingKey {
        case orderId = "OrderID"
        case itemId = "ItemID"
        case quantity = "Quantity"
    }
}

@main
struct SwiftPlayground {
    static func main() {

        let dbPath = "Sources/SwiftPlayground/cafe.db"
        
        do {
            let dbQueue = try DatabaseQueue(path: dbPath)
            let purchaserIDs: [Int] = [3, 8]
            
            

            try dbQueue.read { db in
                let schema = try db.dumpSchema()
                print(schema)


                let purchasers = try Purchaser.fetchAll(db, keys: purchaserIDs)
                for purchaser in purchasers {
                // if let purchaser {
                    print("Found purchaser: \(purchaser.name)")
                
                // } else {
                //     print("No purchaser #\(purchaser.id)")
                } // end of purchaserfinding

            } // end of read
            
            }catch{
                print(error)
            } // end of do
    }// end of main
} 
