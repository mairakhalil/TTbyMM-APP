
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/constants/colors.dart';

class InputField extends StatefulWidget {
  final String labelText;
 final IconData prefixIcon;
 final List<TextInputFormatter>? inputFormatters; 
  const InputField({super.key, required this.labelText, required this.prefixIcon, this.inputFormatters});
  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 38,
      child: TextFormField(
        inputFormatters:widget.inputFormatters,
        //  [
        //   FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+')),
        // ],
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.prefixIcon,
            color:inputtextcolor,
          ),
          labelText: widget.labelText,
          labelStyle:  TextStyle(color:inputtextcolor),
          hintStyle:  TextStyle(color: inputtextcolor, fontSize: 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: inputtextcolor))
        ),
        style:  TextStyle(color:inputtextcolor),
      ),
    );
  }
}
