import 'package:flutter/material.dart';
import 'package:milk_n_munchies/components/form_footer.dart';
import 'package:milk_n_munchies/screens/login/login.dart';
import 'package:milk_n_munchies/screens/signup/signup_form.dart';
import '../constants/colors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 111),
          child: Column(children: [
            Text(
              "Signup",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: inputtextcolor),
            ),
            const SizedBox(
              height: 50,
            ),
            const SignupForm(),
             FormFooter(
                footertxt: "Already have an account? ", footerbtntxt: "Login", onpressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login())); },)
          ]),
        ),
      ),
    );
  }
}
