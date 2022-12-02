import 'package:coffee_factory_test/components/flashbar.dart';
import 'package:coffee_factory_test/components/take_away_pick.dart';
import 'package:coffee_factory_test/models/coffee.dart';
import 'package:coffee_factory_test/models/cupboard_list.dart';
import 'package:coffee_factory_test/pages/coffee_detail_order.dart';
import 'package:flutter/material.dart';

/**
 * ashary.gartanto@gmail.com
 * card coffee component that will be used in coffee list.
 */
class CoffeeCard extends StatefulWidget {
  final Coffee coffee;
  const CoffeeCard({super.key, required this.coffee});

  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  String pick = "Pick";
  @override
  Widget build(BuildContext context) {
    return CoffeeCardFunc(widget.coffee);
  }

// ignore: non_constant_identifier_names
  Card CoffeeCardFunc(Coffee coffee) {
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
                  backgroundImage: AssetImage(coffee.image),
                  radius: 100,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                coffee.name,
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
                coffee.description,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TakeAwayPickState(
                  pick: pick,
                  callback: (value) {
                    pick = value;
                  }),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 110,
                child: ElevatedButton(
                  onPressed: () {
                    if (pick.toLowerCase() != "dine in") {
                      if (CupboardList.cupboardListTotal[0].totalCupboard > 0) {
                        CupboardList.cupboardListTotal[0].totalCupboard =
                            CupboardList.cupboardListTotal[0].totalCupboard - 1;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoffeeDetailOrder(
                                    coffee: coffee,
                                    takeAway: pick,
                                    message: 'Coffee for Take Away added!',
                                  )),
                        );
                      } else {
                        ShowFlashBar(context, 'Cup is out of stock!');
                      }
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoffeeDetailOrder(
                                  coffee: coffee,
                                  takeAway: pick,
                                  message: 'Coffee for Dine In added!',
                                )),
                      );
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black87)),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: const [Icon(Icons.touch_app), Text('Order')],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
