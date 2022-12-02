// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:coffee_factory_test/models/cupboard.dart';

/**
 * ashary.gartanto@gmail.com
 * cupboard list model and static data
 */
class CupboardList {
  CupBoard cupboard;
  int totalCupboard;
  CupboardList({
    required this.cupboard,
    required this.totalCupboard,
  });

  static List<CupboardList> cupboardListTotal = [
    // ignore: prefer_const_constructors
    CupboardList(
        // ignore: prefer_const_constructors
        cupboard: CupBoard(
            id: '1',
            name: 'Karton',
            company: 'PT Karton',
            image: 'assets/images/cup_coffee.jpeg'),
        totalCupboard: 1000)
  ];
}
