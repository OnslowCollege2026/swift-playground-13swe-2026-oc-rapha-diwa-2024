// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let scores = [45, 78, 89, 32, 50, 92, 67, 41, 99, 56]

        // cube number.
        let total = scores.map {return $0 + 5}
        // ilter even.
        .filter {return $0 >= 50 }
        // add temall        

        let totally = total.reduce(0) { return $0 + $1 }
        
        var numOfScores = total.count

        print(totally/numOfScores) // Output: 15
    }
}