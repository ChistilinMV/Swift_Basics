/* Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками */

enum Job {
    case cashier
    case cook
}

struct Worker {
    var name: String
    var salary: Double
    var job: Job
}

class Pizzeria {
    var workers: [Worker]
    
    init (workers: [Worker]) {
        self.workers = workers
    }
}

/* Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false,
если места не хватает. Изначальное количество мест задается в инициализаторе */

class Table {
    var seats: Int
    
    init (seats: Int) {
        self.seats = seats
    }
    
    func placeSeats(requestSeats: Int) -> Bool {
        requestSeats <= seats
    }
}


/* Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе,
не передаются туда в качестве параметра */

class Table {
    var seats: Int
    weak var pizzeria: Pizzeria?
    
    init (seats: Int, pizzeria: Pizzeria) {
        self.seats = seats
        self.pizzeria = pizzeria
    }
    
    func placeSeats(requestSeats: Int) -> Bool {
        requestSeats <= seats
    }
}

class Pizzeria {
    var workers: [Worker]
    var tables: [Table] = []
    
    init (workers: [Worker]) {
        self.workers = workers
        tables = [Table(seats: 4, pizzeria: self)]
    }
}
