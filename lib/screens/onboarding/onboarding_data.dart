import 'package:flutter/material.dart';

class OnboardingData extends StatelessWidget {
  final String onboardingtext, onboardingpara;
  const OnboardingData(
      {super.key, required this.onboardingtext, required this.onboardingpara});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
      
      child: Container(
       padding: const EdgeInsets.only(left: 33, right: 33, top: 157),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboarding.png"),
            const SizedBox(
              height: 50,
            ),
            Text(
              onboardingtext,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFF37C0D)),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              onboardingpara,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
