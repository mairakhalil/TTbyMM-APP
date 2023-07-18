import 'package:flutter/material.dart';
import 'package:milk_n_munchies/screens/constants/colors.dart';
import 'package:milk_n_munchies/screens/constants/text.dart';
import 'package:milk_n_munchies/screens/login/login.dart';
import 'package:milk_n_munchies/screens/onboarding/onboarding_data.dart';
import 'package:milk_n_munchies/screens/signup/signup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:   Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: controller,
              children: const [
                OnboardingData(
                    onboardingtext: onboardingText1,
                    onboardingpara: onboardingPara1),
                OnboardingData(
                    onboardingtext: onboardingText2,
                    onboardingpara: onboardingPara2),
                OnboardingData(
                    onboardingtext: onboardingText3,
                    onboardingpara: onboardingPara3)
              ],
            ),
            //Onboarding Page Indicators
            Positioned(
              left: 0,
              right: 0,
              bottom: 190,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                effect: WormEffect(
                  activeDotColor:inputtextcolor,
                  dotColor: const Color.fromARGB(255, 187, 185, 185)
                ),
                ),
              ),
              
            ),
             Positioned(
                left: 0,
                right: 0,
                bottom: 35,
                child: Column(
                  children: [
                    Buttons(
                      btncolor: const Color(0xFFF37C0D),
                      btntext: 'Login',
                      btntextcolor: const Color(0xFFFFFFFF), 
                      onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
               
                      },
                    ),
                    const SizedBox(height: 20),
                    Buttons(
                        btncolor: const Color(0xFFFFFFFF),
                        btntext: 'Signup',
                        btntextcolor: const Color(0xFFF37C0D), onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Signup()));
                          },),
                  ],
                ))
          ],
        ),
      ),
   )
     );
  }
}
