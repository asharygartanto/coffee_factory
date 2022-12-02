import 'package:coffee_factory_test/models/cupboard.dart';
import 'package:flutter/material.dart';

/**
 * ashary.gartanto@gmail.com
 * card component for cup, that will be used in cup lists
 */
class CupCard extends StatefulWidget {
  final CupBoard cupboard;
  final int totalCup;
  const CupCard({super.key, required this.cupboard, required this.totalCup});

  @override
  State<CupCard> createState() => _CupCardState();
}

class _CupCardState extends State<CupCard> {
  @override
  Widget build(BuildContext context) {
    return CoffeeCardFunc(widget.cupboard, widget.totalCup);
  }

// ignore: non_constant_identifier_names
  Card CoffeeCardFunc(CupBoard cupboard, int totalCup) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.brown[100],
      child: SizedBox(
        width: 150,
        height: 350,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.brown[500],
                radius: 68,
                child: CircleAvatar(
                  backgroundImage: AssetImage(cupboard.image),
                  radius: 100,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                cupboard.company,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                cupboard.name,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Total Cup : $totalCup",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
