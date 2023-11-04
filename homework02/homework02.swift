/**
1.	Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой  процент,
третий аргумент это срок. Функция возвращает сколько денег получит пользователь по итогу
*/

func  calcDeposit(sum: Double, percent: Double, term: Int) -> Double {
    var finalSum = sum
    for _ in 0..<term {
        finalSum += percent * finalSum / 100 
    }
    return finalSum
}

/**
2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.
*/

enum Pizza {
  case calzone
  case napoletana
  case siciliana
}
let calzone: Pizza = .calzone
let napoletana: Pizza = .napoletana
let siciliana: Pizza = .siciliana

/**
3. Добавить возможность получения названия пиццы через rawValue
*/

enum Pizza: String {
  case calzone
  case napoletana
  case siciliana
}
let calzone: String = Pizza.calzone.rawValue
let napoletana: String = Pizza.napoletana.rawValue
let siciliana: String = Pizza.siciliana.rawValue
