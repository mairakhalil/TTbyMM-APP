import 'package:flutter/material.dart';
import 'package:milk_n_munchies/screens/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            Image.asset("assets/images/logo.png"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Unlock Earnings by Mentoring",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
