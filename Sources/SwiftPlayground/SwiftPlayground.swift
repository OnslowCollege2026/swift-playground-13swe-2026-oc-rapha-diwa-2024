// The Swift Programming Language
// https://docs.swift.org/swift-book

struct Book {
    let title : String
    let author : String
    let pages : Int

    func bookSummary (title:String, author:String, pages:Int) -> String {
        
    }
}

struct Temperature {

    static func toFarenheit(celcius: Double) -> Double {
        

    }

    static func toCelcius(farenheit: Double) -> Double {
        return (farenheit - 32) ÷ 1.8
    }
}
struct potato{
    static func main() {

    Temperature.toCelcius(farenheit: 109)

    }
}