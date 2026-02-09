// The Swift Programming Language
// https://docs.swift.org/swift-book
// Part 1 — Weekly Lunch Data

// Copy this array into your program: let lunches = [6.50, 8.00, 5.75, 9.20, 7.10]

// These are the lunch costs for Monday to Friday.


let prices: [Double] = [6.50, 8.00, 5.75, 9.20, 7.10]
let days: [String] = ["monday", "tuesday", "wednesday", "thursday", "friday"]

var overBudget: Bool = false

let budget = 35.00

// Part 2 — Print Each Day’s Spending (for loop)

// Use a for loop to print the lunch cost for each day.


@MainActor func main() {

    prices.enumerated().forEach { index, price in
        print("\(days[index]) : $\(prices[index])" )
        
        if price >= 9.0 {
            print("High spending day 😫😫")
        }
    }
        let total = totalCost(prices: prices)
            print("Week total: $\(total)")

}


main()



// Part 3 — Functions

// Write these functions:

// Total Cost Function



func totalCost(prices: [Double]) -> Double{
    
    var totalPrice = 0.0 

    for price in prices {
            totalPrice += price
    }
    return totalPrice
}





// This should return the total cost of all lunches.



// Budget Check Function

@MainActor func isOverBudget(total: Double, budget: Double) -> Bool{
    if total >= budget {
        overBudget = true
    }
    return overBudget
}



// This should return true if the student spent more than the budget.



// Average Cost Function

// func averageCost(prices: [Double]) -> Double {
    
// }



// This should return the average lunch cost per day.





// Part 4 — Budget Decision (if statement)

// Set a weekly budget:







// After calculating the total lunch cost:

// If the student is under budget, print:You stayed within budget.
// If the student is over budget, print:Warning: You overspent this week.

@MainActor func budgetCheck() {
    if overBudget == true {
        print("Warning: You overspent this week.")
    }
    else {
        print("You stayed within budget.")
    }
}

// Part 5 — High Spending Day Check (if inside loop)


// Inside your for loop, add this check:

// If any lunch costs more than $9.00, print:High spending day detected.
// Part 6 — Snack Spending Simulation (while loop)



// The student also buys snacks.

var snackTotal: Double = 0.0
let snackMax: Double = 10.0
let snackCost: Double = 2.50

// Write a while loop that keeps adding snacks until snack spending reaches at least $10.
while snackTotal < snackMax {
    snackTotal += snackCost    
    print("\nSnack total : $\(snackTotal)")
}

// Rules:

// Start with snackTotal = 0
// Each snack costs $2.50
// After each snack purchase, print the running total
// Example:



// Snack total: $2.50

// Snack total: $5.00

// Snack total: $7.50

// Snack total: $10.00




// Part 7 — Final Summary Output

var totalTotal: Double = total += snackTotal

// At the end, print:

// Weekly lunch total
print("Lunch total: \(totalPrice)")
// Weekly snack total
print("Snack total: \(snackTotal)")
// Combined total
print("Combined total: \(totalTotal)")
// Average daily lunch cost
// Whether they stayed within budget
// Example format:



// Lunch total: $36.55

// Snack total: $10.00

// Combined total: $46.55

// Average lunch cost: $7.31

// Warning: You overspent this week.




// Extension (Optional Challenge)



// Write this function:

// func mostExpensiveDay(prices: [Double]) -> Double

// It should find the most expensive lunch cost.



// Print:

// Most expensive lunch: $9.20




// Deliverable
