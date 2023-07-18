import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});
  @override
  State<RadioButton> createState() => _RadioButtonState();
}
List<String> options = ["age1", "age2", "age3"];

class _RadioButtonState extends State<RadioButton> {
  String currentopt = options[0];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: const Text(
                  "20-25",
                  style: TextStyle(fontSize: 12),
                ),
            
              value: options[0],
              groupValue: currentopt,
              onChanged: (value) {
                setState(() {
                  currentopt = value.toString();
                });
              }),
        ),
        Expanded(
          child: RadioListTile(
              contentPadding: const EdgeInsets.all(0),
              title: const Text("26-30", style: TextStyle(fontSize: 12)),
              value: options[1],
              groupValue: currentopt,
              onChanged: (value) {
                setState(() {
                  currentopt = value.toString();
                });
              }),
        ),
        Expanded(
          child: RadioListTile(
              contentPadding: const EdgeInsets.all(0),
              title: const Text("Above", style: TextStyle(fontSize: 12)),
              value: options[2],
              groupValue: currentopt,
              onChanged: (value) {
                setState(() {
                  currentopt = value.toString();
                });
              }),
        ),
      ],
    );
  }
}
