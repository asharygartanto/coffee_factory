import 'package:flutter/material.dart';

/**
 * ashary.gartanto@gmail.com
 * dropdown list component for choosing take away or dine in
 */
class TakeAwayPickState extends StatefulWidget {
  final String pick;
  final Function(String)? callback;
  const TakeAwayPickState(
      {super.key, required this.pick, required this.callback});

  @override
  State<TakeAwayPickState> createState() => _TakeAwayPickState();
}

class _TakeAwayPickState extends State<TakeAwayPickState> {
  List<String> listTake = [
    'Take Away',
    'Dine In',
  ];
  String dropdownValue = "Take Away";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      onChanged: (String? value) {
        widget.callback!(value!);
        setState(() {
          dropdownValue = value;
        });
      },
      borderRadius: BorderRadius.circular(5.0),
      items: listTake.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
