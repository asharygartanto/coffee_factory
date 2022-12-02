import 'package:coffee_factory_test/components/coffee_card.dart';
import 'package:coffee_factory_test/models/coffee.dart';
import 'package:flutter/material.dart';

/**
 * ashary.gartanto@gmail.com
 * list to show all the coffe list that will be called in first navbar, to make 
 * an order and pick between dine in or take away(using cup)
 */
class CoffeeListPage extends StatefulWidget {
  final List<Coffee> coffees;
  const CoffeeListPage({super.key, required this.coffees});

  @override
  State<CoffeeListPage> createState() => _CoffeeListPageState();
}

class _CoffeeListPageState extends State<CoffeeListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widget.coffees.length,
        itemBuilder: (context, i) {
          return CoffeeCard(coffee: widget.coffees[i]);
        });
  }
}
