/**
1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить ее в виде массива видов чая, которые хотят заказать).
Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал и стоимость) 
*/

enum Tea {
  case green
  case black
  case fruit
}
var a: [Tea:Double] = [.green:50, .black:100, .fruit:150]
var b: [Tea] = [.green , .fruit, .green, .black]
b.enumerated().forEach{print("\($0). \($1) $\(a[$1]!)")}

/**
2.	Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого,
но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию
*/

let a: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
var b = a.compactMap{ $0 }.filter{$0 != 0 && $0 != 4}.sorted{$0 < $1}
print (b) // output [-20, -7, -4, 5, 10, 15, 16, 25, 75]

/**
3.	Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу,
массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.
*/

func generateArray(_ n: Int) -> [Int] {
    var result = [Int]()
    var element = 1
    for _ in 1...n {
        result.append(element)
        element *= 2
    }
    return result
}
print(generateArray(5)) //output [1, 2, 4, 8, 16]
