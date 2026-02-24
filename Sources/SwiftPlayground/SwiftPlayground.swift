// The Swift Programming Language
// https://docs.swift.org/swift-book
@main
struct feem {
    static func main() {
    let mixed = ["cat", "7", "owl", "15", "dog", "3"]

    let numbers = mixed.compactMap {Int($0)}
    print(numbers)

    // Task B
    let sightings = [
        (name: "moth", score: 3),
        (name: "wolf", score: 9),
        (name: "raven", score: 4),
        (name: "mist", score: 7),
        (name: "wisp", score: 2)
    ]


    let sillySightings = sightings.filter { sighting in 
        return sighting.name.prefix(1) == "m" || sighting.name.prefix(1) == "w"
    }

    let extractedScores = sillySightings.map { $0.score}
    let totalScore = extractedScores.reduce(0, +) // convention


    let total = extractedScores.reduce(0) {return $0 + $1}


    // Task C
    func accepts(_ input: String, isValid: (String) -> Bool) -> Bool {
        return isValid(input)
    }

    let sample = accepts("moonbeam") { string in
        string.allSatisfy {character in 
        character.isLowercase
        }
    }

    print(sample)

    let sample2 = accepts("balls") {string in
    string.count > 8 
    }

    print(sample2)

    // Task D

    let archive = [
            [
                [["candle", "dust"], ["mirror", "ash"]],
                [["whisper", "shadow"], ["clock", "veil"]]
            ],
            [
                [["stone", "key"], ["relic", "name"]],
                [["cipher", "bone"], ["ember", "seal"]]
            ],
            [
                [["feather", "ink"], ["glow", "eclipse"]],
                [["riddle", "echo"], ["ember", "glyph"]]
            ]
        ]

        let wing = archive.last { wing in
        wing.contains { room in
            room.contains {shelf in
                shelf.contains { $0.hasPrefix("e") }
                } 
            }
        }!
            let room = wing.last { room in
                room.contains {shelf in
                    shelf.contains { $0.count == 4 }
                    } 
            }!
            let shelf = room.last {shelf in
                shelf.contains { $0.contains("e") }
                } 

    print(numbers)
    }
}