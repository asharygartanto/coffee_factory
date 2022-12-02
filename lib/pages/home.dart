import 'package:coffee_factory_test/models/coffees_list.dart';
import 'package:coffee_factory_test/models/cupboard_list.dart';
import 'package:coffee_factory_test/pages/cup_factory_map.dart';
import 'package:coffee_factory_test/pages/cup_list_detail.dart';
import 'package:flutter/material.dart';
import 'coffee_list_page.dart';

/**
 * ashary.gartanto@gmail.com
 * Home for scaffold, root structure
 */
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [];

  @override
  void initState() {
    pages = [
      CoffeeListPage(coffees: coffeesList),
      CupListDetail(cupboardList: CupboardList.cupboardListTotal),
      const CupFactoryMap(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Factory'),
      ),
      body: pages.elementAt(_selectedIndex),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.coffee), label: "Coffee"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.coffee_maker), label: "Rest of Cup"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.map_rounded), label: "Cup Factory Map"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
