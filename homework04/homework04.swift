/* 1.	Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов) */
enum PizzaType {
  case calzone, napoletana, siciliana, margarita, formaggi
}

/* 2.	Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением. */
struct Pizza {
	enum PizzaType {
		case calzone, napoletana, siciliana, margarita, formaggi}
	enum PizzaAdditives {
		case pepperoni, tomatos, cheese}
	var pizzaType: PizzaType
	var cost: Double
	var thickDough: Bool
	var pizzaAdditives: PizzaAdditives
}

/* 3.	Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задается в инициализаторе. */
class Pizzeria {
	private var pizza: [Pizza] = []

	init (pizza: [Pizza]) {
		self.pizza = pizza
	}
	
	convenience init () {
		self.init(pizza: [
			Pizza(pizzaType: .calzone, cost: 38.90, thickDough: false, pizzaAdditives: .tomatos),
			Pizza(pizzaType: .formaggi, cost: 39.70, thickDough: true, pizzaAdditives: .cheese)])
	}
}

/* 4.	Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц. */
class Pizzeria {
	private var pizza: [Pizza] = []

	init (pizza: [Pizza]) {
		self.pizza = pizza
	}
	
	convenience init () {
		self.init(pizza: [
			Pizza(pizzaType: .calzone, cost: 38.90, thickDough: false, pizzaAdditives: .tomatos),
			Pizza(pizzaType: .formaggi, cost: 39.70, thickDough: true, pizzaAdditives: .cheese)])
	}
	
	func getPizzaList() -> [Pizza] {
		return pizza
	}
	
	func addPizza(pizza: Pizza) -> Void {
		self.pizza.append(pizza)
	}
}

/* 5.	Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
 */
 var myPizzeria = Pizzeria(pizza: [
	Pizza(pizzaType: .napoletana, cost: 38.90, thickDough: true, pizzaAdditives: .tomatos),
	Pizza(pizzaType: .margarita, cost: 35.30, thickDough: true, pizzaAdditives: .cheese),
	Pizza(pizzaType: .siciliana, cost: 42.50, thickDough: false, pizzaAdditives: .pepperoni)])
