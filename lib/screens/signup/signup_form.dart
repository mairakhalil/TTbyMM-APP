import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:milk_n_munchies/components/radioButton.dart';
import 'package:milk_n_munchies/screens/login/login.dart';

import '../../components/button.dart';
import '../../components/form_input.dart';
import '../constants/colors.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputField(
          labelText: 'Name',
          prefixIcon: Icons.person,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Choose Age Range",
            textAlign: TextAlign.left,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 3),
          child: RadioButton(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: InputField(
            labelText: 'Contact',
            prefixIcon: Icons.phone_android,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: InputField(
            labelText: 'Email',
            prefixIcon: Icons.mail,
            inputFormatters: [],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: InputField(
            labelText: 'Password',
            prefixIcon: Icons.lock,
            inputFormatters: [],
          ),
        ),
           Padding(
             padding: const EdgeInsets.only(top:50),
             child: Buttons(
                btncolor: inputtextcolor,
                btntext: "Signup",
                btntextcolor: buttontextcolor,
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                }),
           ),
      ],
    );
  }
}
