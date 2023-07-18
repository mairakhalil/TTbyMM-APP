import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Color btncolor, btntextcolor;
  final String btntext;
  final VoidCallback onPressed;
  const Buttons(
      {super.key,
      required this.btncolor,
      required this.btntext,
      required this.btntextcolor,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 301,
        height: 39,
        // padding: const EdgeInsets.only(left: 44, right: 44),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(btncolor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Color(0xFFF37C0D)),
                  ),
                )),
            child: Text(
              btntext,
              style: TextStyle(color: btntextcolor),
            )));
  }
}
