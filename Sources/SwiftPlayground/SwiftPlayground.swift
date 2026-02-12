// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    /// Sort scores.
    static func main() {
        let scores = [45, 78, 89, 32, 50, 92, 67, 41, 99, 56]

        // Cube number.
        let total = scores.map {return $0 + 5}
        // Filter over 50.
        .filter {return $0 >= 50 }
        // Add them all.
        let totally = total.reduce(0) { return $0 + $1 }

        // Number of scores in the array.
        var numOfScores = total.count

        // Print total average.
        print(totally/numOfScores) // Output: 15
    }
}
