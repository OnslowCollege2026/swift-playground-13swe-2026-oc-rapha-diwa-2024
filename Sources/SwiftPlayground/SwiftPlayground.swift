// The Swift Programming Language
// https://docs.swift.org/swift-book
// Part 1 — Weekly Lunch Data

// Copy this array into your program: let lunches = [6.50, 8.00, 5.75, 9.20, 7.10]

// These are the lunch costs for Monday to Friday.


let lunches: [Double] = [6.50, 8.00, 5.75, 9.20, 7.10]
let days: [String] = ["monday", "tuesday", "wednesday", "thursday", "friday"]

func printify() {

    lunches.enumerated().forEach { index, cost in
        print("Day \(index)")
        }

    // days.forEach { 
    //     print(lunches) }
    // // for day in days {
    //     print("\(days[day]): $\(lunches)")
    // }
}



printify()


// Part 2 — Print Each Day’s Spending (for loop)

// Use a for loop to print the lunch cost for each day.

func totalCost(prices: [Double]) -> Double{
    var totalPrice = 0.0 
    for price in prices {

    }
}

// Example output:

// Day 1: $6.50

// Day 2: $8.00

// Day 3: $5.75

// Day 4: $9.20

// Day 5: $7.10





// Part 3 — Functions

// Write these functions:



// Total Cost Function

// func totalCost(prices: [Double]) -> Double



// This should return the total cost of all lunches.



// Budget Check Function

// func isOverBudget(total: Double, budget: Double) -> Bool



// This should return true if the student spent more than the budget.



// Average Cost Function

// func averageCost(prices: [Double]) -> Double



// This should return the average lunch cost per day.





// Part 4 — Budget Decision (if statement)

// Set a weekly budget:



// let budget = 35.00



// After calculating the total lunch cost:

// If the student is under budget, print:You stayed within budget.
// If the student is over budget, print:Warning: You overspent this week.
// Part 5 — High Spending Day Check (if inside loop)



// Inside your for loop, add this check:

// If any lunch costs more than $9.00, print:High spending day detected.
// Part 6 — Snack Spending Simulation (while loop)



// The student also buys snacks.



// Write a while loop that keeps adding snacks until snack spending reaches at least $10.



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



// At the end, print:

// Weekly lunch total
// Weekly snack total
// Combined total
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
