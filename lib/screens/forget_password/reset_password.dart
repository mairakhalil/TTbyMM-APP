import 'package:flutter/material.dart';
import 'package:milk_n_munchies/components/button.dart';
import 'package:milk_n_munchies/components/form_input.dart';
import 'package:milk_n_munchies/screens/login/login.dart';
import '../constants/colors.dart';

class PassReset extends StatelessWidget {
  const PassReset({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
         alignment: Alignment.center,
          child: Column(
          
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:111),
                  child: Text(
                    "OTP Authentication",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: inputtextcolor),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              const Padding(
                padding: EdgeInsets.only(top:150),
                child: InputField(
                        labelText: "Enter New Password",
                        prefixIcon: Icons.remove_red_eye),
              ),
                       const SizedBox(
                  height: 25,
                ),
          const InputField(
                        labelText: "Confirm New Password",
                        prefixIcon: Icons.remove_red_eye),
              
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
                                builder: (context) => const Login()));
                      }),
                ),
              ]),
        ),
      ),
    );
  }
}
