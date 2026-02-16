// The Swift Programming Language
// https://docs.swift.org/swift-book

let mixed = ["cat", "7", "owl", "15", "dog", "3"]

let numbers = mixed.compactMap {Int($0)}

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
.map{ return $0 }


let total = scores.reduce(0) {return $0 + $1}

func accepts(_ input: String, isValid: (String) -> Bool) -> Bool {
    return isValid(input)
}

let sample = "moonlight"

// let archive = [
//         [
//             [["candle", "dust"], ["mirror", "ash"]],
//             [["whisper", "shadow"], ["clock", "veil"]]
//         ],
//         [
//             [["stone", "key"], ["relic", "name"]],
//             [["cipher", "bone"], ["ember", "seal"]]
//         ],
//         [
//             [["feather", "ink"], ["glow", "eclipse"]],
//             [["riddle", "echo"], ["ember", "glyph"]]
//         ]
//     ]


print(numbers)
