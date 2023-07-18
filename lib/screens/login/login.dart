import 'package:flutter/material.dart';
import 'package:milk_n_munchies/components/form_footer.dart';

import 'package:milk_n_munchies/screens/login/login_form.dart';
import 'package:milk_n_munchies/screens/signup/signup.dart';

import '../constants/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(left: 45, right: 45, top:111),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: inputtextcolor),),
            const SizedBox(height: 50,),
          const LoginForm(),
           FormFooter(footertxt: "New to Account? ", footerbtntxt: "Signup", onpressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup())); },)
      
        ]),
      ),
      );
    
    
  }
}