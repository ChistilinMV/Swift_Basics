/* 1.	В рамках прошлого ДЗ был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри. */
protocol MenuProtocol {
	var cost: Double { get }
	var name: String { get }
}

struct Pizza {
	enum PizzaType {
		case calzone, napoletana, siciliana, margarita, formaggi}
	enum PizzaAdditives {
		case pepperoni, tomatos, cheese}
	var pizzaType: PizzaType
	var cost: Double
	var name: String
	var thickDough: Bool
	var pizzaAdditives: PizzaAdditives
}

struct Fries {
	enum FriesSize {
		case small, middle, large}
	var cost: Double
	var name: String
	var size: FriesSize
}

class Pizzeria {
	var menu:  [MenuProtocol]
  
	init(menu: [MenuProtocol]) {
		self.menu = menu
	}
	
	
	func getMenu() -> [MenuProtocol] {
		menu
	}
}
/* 2.	Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню */
	func add(menuItem: MenuProtocol) {
		self.menu.append(menuItem)
	}
	
/* 3.	Создайте протокол, в котором будут содержаться функции открытия и закрытия */
protocol WorkProtocol {
    func open()
    func close()
}

/* 4.	Написать расширение для класса пиццерии, в  котором будет реализован протокол из пункта 3 */
extension Pizzeria: WorkProtocol {
    func open() {
        print("Open")
    }
    
    func close() {
        print("Close")
    }
}

/* 5.	Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания */
func subtraction<T: Numeric>(a: T, b: T) -> T {
    a - b
}
