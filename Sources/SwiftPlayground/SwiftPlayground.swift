// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let scores = [45, 78, 89, 32, 50, 92, 67, 41, 99, 56]
        let numOfScores = scores.count
        // cube number.
        let total = scores.map {return $0 + 5}
        // ilter even.
        .filter {return $0 >= 50 }
        // add temall
        .reduce(0) { return $1 + $0 / }

        print(total) // Output: 15
    }
}