// The Swift Programming Language
// https://docs.swift.org/swift-book


struct Car {
    let brand : String
    let model : String
    let year : Int

    func summary() -> String {
    return """
    Brand: \(brand)
    Model: \(model)
    Year: \(year)
    """
    }
}

struct BankAccount {
    let balance : Double
    let owner : String

    func description() -> String {
    return """
    Kia Ora, 
    \(owner) has $\(balance) in their account.
    """
    }
}

struct Rectangle {
    let width: Double
    let length: Double

    func area() -> Double {
        let bum = width * length 
        return bum
    }
}

/// Quest
struct Quest {
    let title : String
    let difficulty: String
    let reward: Int

    /// Prints out badges.
    func printBadge() {
    print("\(difficulty) Quest - \(reward) XP".)
    }
}

@main
struct SwiftPlayground {
    static func main() {\
        // List of cars.
        let cars = [
            Car(
                brand: "Suzuki",
                model: "Swift",
                year: 2020
        ),
            Car(
                brand: "BMW",
                model: "M5 sport",
                year: 2009
        ),
        ]

        // List of Bank accounts.
        let accounts = [
            BankAccount (balance: 0.67, owner: "rapha"),
            BankAccount (balance: 100.00, owner: "mom")
        ]

        // List of rectangles
        let rectangles = [
            Rectangle (width: 5.0, length: 2.0),
            Rectangle (width: 3.0, length: 7.0)
        ]

        // List of quests
        let quests = [

            Quest (title: "booty", difficulty: "easy", reward: 10),
            Quest (title: "butt", difficulty: "medium", reward: 25),
            Quest(title: "bum", difficulty: "hard", reward: 50)
        ]

            print(accounts.description())

            printBadge()

    }    
}

