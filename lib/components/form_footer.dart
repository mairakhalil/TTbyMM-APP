import 'package:flutter/material.dart';

class FormFooter extends StatelessWidget {
  final String footertxt, footerbtntxt;
  final VoidCallback onpressed;
  const FormFooter({super.key, required this.footertxt, required this.footerbtntxt, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
      child: Column(
        children: [
          Row(
            children: [
               Text(
                footertxt,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              TextButton(
                  onPressed:onpressed,
                  child: Text(
                    footerbtntxt,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
