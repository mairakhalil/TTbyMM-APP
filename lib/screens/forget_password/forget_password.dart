import 'package:flutter/material.dart';
import 'package:milk_n_munchies/components/button.dart';
import 'package:milk_n_munchies/components/form_input.dart';
import 'package:milk_n_munchies/screens/forget_password/otp_auth.dart';
import '../constants/colors.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 111),
              child: Text(
                "Forget Password",
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
              padding: EdgeInsets.only(top: 150),
              child: InputField(
                  labelText: "Enter Phone Number",
                  prefixIcon: Icons.phone_android),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Buttons(
                  btncolor: inputtextcolor,
                  btntext: "Next",
                  btntextcolor: buttontextcolor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpAuth()));
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
