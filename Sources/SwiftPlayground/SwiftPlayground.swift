// The Swift Programming Language
// https://docs.swift.org/swift-book

struct Student {
    let id: Int 
    var name: String 
    var age: Int 
    let nsn: Int 
    var email: String 

    func summary() -> String {
        return """
ID: \(id)
Name: \(name)
Age: \(age)
NSN: \(nsn)
Email: \(email)
"""
    }
}
@main
struct SwiftPlayground {
    static func main() {
            let students = [
            Student(
                id: 22893,
                name: "rapha",
                age: 16,
                nsn: 0167340155,
                email: "rapha.diwa@student.onslow.school.nz"
            ),
            Student(
                id: 22410,
                name: "John",
                age: 17,
                nsn: 0144009487,
                email: "john.quimpo@student.onslow.school.nz"
            ),
            Student(
                id: 23445,
                name: "ralph",
                age: 15,
                nsn: 0164265435,
                email: "ralph.diwa@student.onslow.school.nz"
            ),
            Student(
                id: 24233,
                name: "raphlyn",
                age: 13,
                nsn: 0837298125,
                email: "raphlyn.diwa@student.onslow.school.nz"
            ),
            Student(
                id: 24483,
                name: "Kartik",
                age: 17,
                nsn: 0154352595,
                email: "kartik.uniyal@student.onslow.school.nz"
            ),
            ]

            let studentAgeIn10Years = students.map { "\($0.name) will be \($0.age + 10) in 10 years.."}
            for agessssss in studentAgeIn10Years {
                print(agessssss)
            }
            //print(students.summary())
    }    
}

