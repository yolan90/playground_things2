//: [Previous](@previous)

import Foundation

enum TemperatureConverter {
    case KelvinToCelcius
    case KelvinToFahrenHeit
    case CelciusToKelvin
    case FahrenheitToKelvin
    case CelciusToFahrenheit
    case FahrenheitToCelcius
}

enum TempScale {
    case Celcius
    case Kelvin
    case Fahrenheit
}

func convertTemp(type: TemperatureConverter, value: Double) -> String{
    var result : Double = 0
    var typeScale : TempScale = TempScale.Celcius
    switch(type) {
        case .KelvinToCelcius:
            result = value - 273.15
            typeScale = TempScale.Celcius
        case .KelvinToFahrenHeit:
            result = ((value - 273.15) * 9/5 + 32)
            typeScale = TempScale.Fahrenheit
        case .CelciusToKelvin:
            result = value + 273.15
            typeScale = TempScale.Kelvin
        case .FahrenheitToKelvin:
            result = (value - 32) * 5/9 + 273.15
            typeScale = TempScale.Kelvin
        case .CelciusToFahrenheit:
            result = (value * 9/5) + 32
            typeScale = TempScale.Fahrenheit
        case .FahrenheitToCelcius:
            result = (value - 32) * 5/9
            typeScale = TempScale.Celcius
    }
    return ("\(result) \(typeScale)")
}

var result = convertTemp(type: TemperatureConverter.CelciusToFahrenheit, value: 100)
var result2 = convertTemp(type: TemperatureConverter.KelvinToCelcius, value: 0)

print(result)
print(result2)

func convert(_ degree: Double, from: TempScale, to: TempScale) -> (res: Double, unit: TempScale) {
    var result : Double = 0
    switch (from, to) {
        case(.Kelvin, .Fahrenheit) : result = ((degree - 273.15) * 9/5 + 32)
        case(.Kelvin, .Celcius) : result = (degree - 273.15)
        case(.Celcius, .Kelvin) : result = (degree + 273.15)
        case(.Celcius, .Fahrenheit) : result = (degree * 9/5) + 32
        case(.Fahrenheit, .Celcius) : result = (degree - 32) * 5/9
        case(.Fahrenheit, .Kelvin) : result = (degree - 32) * 5/9 + 273.15
    default: result = 1
    }
    
    return (result, to)
}

let finalresult = convert(100, from: .Celcius, to: .Fahrenheit)
print(finalresult.res)
print(finalresult.unit)
