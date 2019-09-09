import UIKit

var carDictionary = [String: [String]]()
var carSectionTitles = [String]()
var cars = [String]()

cars = ["Audi", "Aston Martin","BMW", "Bugatti", "Bentley","Chevrolet", "Cadillac","Dodge","Ferrari", "Ford","Honda","Jaguar","Lamborghini","Mercedes", "Mazda","Nissan","Porsche","Rolls Royce","Toyota","Volkswagen"]

for car in cars {
    let carKey = String(car.prefix(1))
    if var carValues = carDictionary[carKey] {
        carValues.append(car)
        carDictionary[carKey] = carValues
    } else {
        carDictionary[carKey] = [car]
    }
}

carSectionTitles = [String](carDictionary.keys)
print(carSectionTitles)
carSectionTitles = carSectionTitles.sorted(by: {$0 < $1})
print(carSectionTitles)
