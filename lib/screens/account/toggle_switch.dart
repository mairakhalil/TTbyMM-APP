import 'package:flutter/material.dart';

class SwitchToggle extends StatefulWidget {
  final String text;
  final String button;
  const SwitchToggle({Key? key, required this.text, required this.button})
      : super(key: key);

  @override
  State<SwitchToggle> createState() => _SwitchToggleState();
}

class _SwitchToggleState extends State<SwitchToggle> {
  bool isToggled = false;

  void toggleSwitch() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(widget.text), // Access widget's text property
      trailing: GestureDetector(
        onTap: toggleSwitch,
        child: Container(
          width: 40,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isToggled ? Colors.green : Color.fromARGB(255, 218, 216, 216),
          ),
          alignment: isToggled ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
