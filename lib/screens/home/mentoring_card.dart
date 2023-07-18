import 'package:flutter/material.dart';
import 'package:milk_n_munchies/components/button.dart';
import 'package:milk_n_munchies/screens/constants/colors.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;

  const CustomCard({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
          elevation: 0,
          child: Container(
            width: 158,
            height: 116,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "AI Technology",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 70),
                  child: Buttons(
                    btncolor: inputtextcolor,
                    btntext: "Take a Slot",
                    btntextcolor: buttontextcolor,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
    );
    
  }
}
