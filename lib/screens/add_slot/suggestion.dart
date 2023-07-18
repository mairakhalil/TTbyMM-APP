import 'package:flutter/material.dart';
import 'package:milk_n_munchies/components/button.dart';
import 'package:milk_n_munchies/screens/constants/colors.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Comment or Suggestion")),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30, top: 10),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: inputtextcolor)),
              hintText: 'Suggestion',
            ),
          ),
        ),
        const Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("You will get paid: "),
                  SizedBox(width: 30),
                  Text("5000"),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Buttons(
              btncolor: inputtextcolor,
              btntext: "Book slot",
              btntextcolor: Colors.white,
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 60),
          child: Buttons(
              btncolor: Colors.white,
              btntext: "Skip",
              btntextcolor: inputtextcolor,
              onPressed: () {}),
        )
      ],
    );
  }
}
