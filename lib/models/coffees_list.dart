import 'beans.dart';
import 'coffee.dart';
import 'grinds.dart';
import 'milks.dart';

/**
 * ashary.gartanto@gmail.com
 * static list coffee datas
 */
final List<Coffee> coffeesList = [
  const Coffee(
    id: '1',
    name: 'Espresso Gayo',
    description: 'Espresso Gayo',
    beans: Beans(id: '2', name: 'Gayo', description: 'Aceh Gayo Coffee'),
    milk: Milk(id: '1', name: 'no milk', milkType: '', milkDose: 0),
    grind: Grind(id: '4', name: 'Fine', description: 'fine'),
    image: 'assets/images/espresso.jpeg',
    coffeeDose: 100,
    isSteamMilk: false,
  ),
  const Coffee(
    id: '2',
    name: 'Cappucino Bali',
    description: 'Cappucino Bali',
    beans: Beans(id: '4', name: 'Bali', description: 'Bali Coffee'),
    milk:
        Milk(id: '3', name: 'Regular 50 ml', milkType: 'Regular', milkDose: 50),
    grind: Grind(id: '4', name: 'Fine', description: 'fine'),
    image: 'assets/images/cappucino.jpeg',
    coffeeDose: 100,
    isSteamMilk: true,
  ),
  const Coffee(
    id: '3',
    name: 'Latte Bali',
    description: 'Latte Bali',
    beans: Beans(id: '4', name: 'Bali', description: 'Bali Coffee'),
    milk:
        Milk(id: '4', name: 'Regular 75 ml', milkType: 'Regular', milkDose: 75),
    grind: Grind(id: '4', name: 'Fine', description: 'fine'),
    image: 'assets/images/latte.jpeg',
    coffeeDose: 50,
    isSteamMilk: true,
  ),
  const Coffee(
    id: '4',
    name: 'Tubruk Sumbawa',
    description: 'Tubruk Sumbawa',
    beans: Beans(id: '3', name: 'Sumbawa', description: 'Sumbawa Coffee'),
    milk: Milk(id: '1', name: 'no milk', milkType: '', milkDose: 0),
    grind: Grind(id: '1', name: 'Coarse', description: 'coarse'),
    image: 'assets/images/kopitubruk.jpeg',
    coffeeDose: 150,
    isSteamMilk: false,
  ),
];

final List<Beans> beansList = [
  const Beans(id: '1', name: 'Toraja', description: 'Toraja Coffee'),
  const Beans(id: '2', name: 'Gayo', description: 'Aceh Gayo Coffee'),
  const Beans(id: '3', name: 'Sumbawa', description: 'Sumbawa Coffee'),
  const Beans(id: '4', name: 'Bali', description: 'Bali Coffee')
];

final List<Milk> milksList = [
  const Milk(id: '1', name: 'no milk', milkType: '', milkDose: 0),
  const Milk(id: '2', name: 'Soya 50 ml', milkType: 'Soya', milkDose: 50),
  const Milk(id: '3', name: 'Regular 50 ml', milkType: 'Regular', milkDose: 50),
  const Milk(id: '4', name: 'Regular 75 ml', milkType: 'Regular', milkDose: 75),
];

final List<Grind> grindsList = [
  const Grind(id: '1', name: 'Coarse', description: 'coarse'),
  const Grind(id: '2', name: 'Medium Coarse', description: 'medium coarse'),
  const Grind(id: '3', name: 'Medium', description: 'medium'),
  const Grind(id: '4', name: 'Fine', description: 'fine'),
];
