import UIKit

//var str = "Ivan"
////var dig = 22
//var dbl = 23.0
//var arr = [1,12,14,13,23]
//var arr2: [Int] = [Int]()
//
//
////print(str)
////print(dig)
////print(dbl)
////print(arr)
//
//func getMyName() -> String {
//    return "Alex"//\(str)"
//}
//
//func foo(name: String = "Anonimus") {
//    print("Hello \(name)")
//}
//
////foo()
////foo(name: getMyName())
////foo(name: str)
////foo(name: "Ksu")
//
//func sum(a: Int, b: Int) -> Int {
//    return a + b
//}
//
////sum(a: dig, b: 4)
//
//var res = 0
//
//arr.forEach { (a) in
//    res = res + a
//    print(res)
//}
//
//let result = arr.reduce(0) { $0 + $1 }
//print("result: \(result)")

//var flag: Bool = (arr.count == 5)
////5 % 2 == 1
//if arr.count == 5 {
//    print("нечет")
//} else {
//    print("чет")
//}

var numbers: [Int] = [1,2,5,6,7,8,13,22,3]
var odd = 0
var even = 0
numbers.forEach {(n) in
let test: Bool = n % 2 == 1
if test == true {
    print("число \(n) нечет")
    odd += 1
} else {
    print("число \(n) чет")
    even += 1
    }
}
print("Количество четных чисел: \(odd)")
print("Количество четных чисел: \(even)")


class Account {
    var accNumber: Int
    var accBalance: Double
    lazy var bankrupt = "Казна пуста! Ваш баланс: "
    
    func balance (_ value:Double) -> String {
        if accBalance > 0 {
            return String(accBalance)
        } else {
            return bankrupt
        }
    }
    init(accNumber: Int, accBalance: Double) {
        self.accNumber = accNumber
        self.accBalance = accBalance
    }
}

class CardAccount: Account {
    let cardAccountCurrency: String
    
    override func balance(_ value: Double) -> String {
        if accBalance > 0 {
            return String(accBalance)
        } else {
            //хочу к текущей переменной bankrupt добавить значение из переменной cardAccountCurrency
            return bankrupt
        }
    }
    
    init(accNumber: Int, accBalance: Double, cardAccountCurrency: String) {
        self.cardAccountCurrency = cardAccountCurrency
        super.init(accNumber: accNumber, accBalance: accBalance)
    }
}


class Card: CardAccount {
    let paymentSystem: String
    
    //здесь тоже бы хотелось к переопределенной функции добавить переменную  paymentSystem из класса Card
    init(accNumber: Int, accBalance: Double, cardAccountCurrency: String, paymentSystem: String) {
        self.paymentSystem = paymentSystem
        super.init(accNumber: accNumber, accBalance: accBalance, cardAccountCurrency: cardAccountCurrency)
    }
}

let salaryCard = Card.init(accNumber: 12100500, accBalance: 3, cardAccountCurrency: "RUR", paymentSystem: "Visa")
salaryCard.balance(2)
//пишу 2, но записано 3 в балансе...чет короче непонятки пока
