import 'package:coffee_factory_test/components/cup_card.dart';
import 'package:coffee_factory_test/models/cupboard_list.dart';
import 'package:flutter/material.dart';

/**
 * ashary.gartanto@gmail.com
 * List for returning list of cup, that will be called in navbar menu
 */
class CupListDetail extends StatefulWidget {
  final List<CupboardList> cupboardList;
  const CupListDetail({super.key, required this.cupboardList});

  @override
  State<CupListDetail> createState() => _CupListDetailState();
}

class _CupListDetailState extends State<CupListDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widget.cupboardList.length,
        itemBuilder: (context, i) {
          return CupCard(
            cupboard: widget.cupboardList[i].cupboard,
            totalCup: widget.cupboardList[i].totalCupboard,
          );
        });
  }
}
