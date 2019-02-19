import Foundation

struct Stock {
    let name : String
    let code : String
    var value : Double
    var variation : Double
    var volume : String
    var suffix: String?
}

var aapl = Stock(name: "Apple", code:"AAPL", value:160.01, variation:1.45, volume: "$4B", suffix: nil)
var renner = Stock(name: "Renner", code:"LREN3", value: 32.01, variation: -0.77, volume: "$200M", suffix: "SA")
var bmw = Stock(name: "BMW AG", code:"BMW", value: 88.35, variation: 0.79, volume: "$327M", suffix: "F")
var sintex = Stock(name: "Sintex", code:"SINTEX", value: 26.95, variation: 1.35, volume: "$2M", suffix: "BO")

var stocks : [Stock] = [aapl, renner, bmw, sintex]

func printStock(stock: Stock) {
    var entry : String = ""
    if let stockSuffix = stock.suffix {
        let nameWithSuffix = stock.code + "." + stockSuffix
        if nameWithSuffix.count <= 5 {
            entry.append("\(nameWithSuffix) \t\t")
        } else {
            entry.append("\(nameWithSuffix) \t")
        }
    } else {
        entry.append("\(stock.code) \t\t")
    }
    
    entry.append("\(stock.value) \t")
    if(stock.variation < 0) {
        entry.append(" ↓ \t")
    } else {
        entry.append(" ↑ \t")
    }
    entry.append("\(stock.variation)%")
    print(entry)
}

for (_,stockEntry) in stocks.enumerated() {
    printStock(stock: stockEntry)
}

