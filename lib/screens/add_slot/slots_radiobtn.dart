import 'package:flutter/material.dart';

class SlotsRadio extends StatefulWidget {
  const SlotsRadio({super.key});
  @override
  State<SlotsRadio> createState() => _SlotsRadioState();
}
List<String> options = ["paid", "volunteer"];

class _SlotsRadioState extends State<SlotsRadio> {
  String currentopt = options[0];
  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        
        Expanded(
          child: RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: const Text(
                  "Paid",
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
               contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: const Text("Volunteer", style: TextStyle(fontSize: 12)),
              value: options[1],
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
