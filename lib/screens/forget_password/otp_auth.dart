import 'package:flutter/material.dart';
import 'package:milk_n_munchies/components/button.dart';
import 'package:milk_n_munchies/screens/forget_password/reset_password.dart';
import '../constants/colors.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpAuth extends StatelessWidget {
  const OtpAuth({super.key});

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
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Text(
                "Enter 4 digit code send to 923*******38",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: inputtextcolor),
              ),
            ),
            const SizedBox(height: 25,),
            OtpTextField(
              numberOfFields: 5,
              borderColor: inputtextcolor,
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
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
                            builder: (context) => const PassReset()));
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
