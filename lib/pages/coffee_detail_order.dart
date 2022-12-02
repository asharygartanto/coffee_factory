import 'package:coffee_factory_test/components/flashbar.dart';
import 'package:coffee_factory_test/models/coffee.dart';
import 'package:coffee_factory_test/models/coffees_list.dart';
import 'package:flutter/material.dart';

/**
 * ashary.gartanto@gmail.com
 * Detail of the coffee order and to make order confirmation. will shown 
 * the flashnar/snackbar
 */
class CoffeeDetailOrder extends StatefulWidget {
  final Coffee coffee;
  final String takeAway;
  final String message;
  const CoffeeDetailOrder(
      {super.key,
      required this.coffee,
      required this.takeAway,
      required this.message});

  @override
  State<CoffeeDetailOrder> createState() => _CoffeeDetailOrderState();
}

class _CoffeeDetailOrderState extends State<CoffeeDetailOrder> {
  var coffees = coffeesList;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.brown[100],
      child: SizedBox(
        width: 150,
        height: 550,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              CircleAvatar(
                backgroundColor: Colors.brown[500],
                radius: 68,
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.coffee.image),
                  radius: 100,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.coffee.name,
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
                widget.coffee.description,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 280,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const [Icon(Icons.cancel), Text(' Cancel')],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ShowFlashBar(context, widget.message);
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const [
                            Icon(Icons.thumb_up),
                            Text(' Confirmed')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
