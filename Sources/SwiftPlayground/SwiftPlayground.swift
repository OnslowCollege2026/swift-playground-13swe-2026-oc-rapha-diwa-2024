// The Swift Programming Language
// https://docs.swift.org/swift-book
@main
struct feem {
    static func main() 

    // Task A
    {
    // TT
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
    let totalScore = extractedScores.reduce(0, +) // Convention for swift.


    let total = extractedScores.reduce(0) {return $0 + $1}

    print(total)

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

        // find wing
if let wing = archive.last(where: { wing in
            wing.contains { room in
                room.contains { shelf in
                    shelf.contains { $0.hasPrefix("e") }
                }
            }
        // Then get the room...
        }), let room = wing.last(where: { room in
            room.contains { shelf in
                shelf.contains { $0.count == 4 }
            }
        // Then get the shelf...
        }), let shelf = room.last(where: { shelf in
            shelf.contains { $0.contains("e") }
        // Then get the word!
        }), let word = shelf.first(where: { $0.hasPrefix("e") }) {
            print(word)
        }
    }
}

