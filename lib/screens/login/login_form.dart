import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:milk_n_munchies/screens/forget_password/forget_password.dart';
import '../../components/bottom_navbar.dart';
import '../../components/button.dart';
import '../../components/form_input.dart';
import '../constants/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          labelText: 'Contact',
          prefixIcon: Icons.phone_android,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        const InputField(
          labelText: 'Password',
          prefixIcon: Icons.lock,
          inputFormatters: [],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Buttons(
              btncolor: inputtextcolor,
              btntext: "Login",
              btntextcolor: buttontextcolor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavBar()));
              }),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgetPass()));
              },
              child: Text(
                "Forgot Password",
                style: TextStyle(
                    color: inputtextcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              )),
        )
      ],
    );
  }
}
