import 'package:flutter/material.dart';


class AccountHeader extends StatelessWidget {
  const AccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
         children: [
            Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              image: const DecorationImage(image: AssetImage('assets/images/card2.png'),
            fit: BoxFit.fill
              ),
              border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 3.0),
              borderRadius: BorderRadius.circular(50),
            ),
          
        ),
     const Padding(
         padding:  EdgeInsets.only(top:8.0, bottom: 8.0),
         child:  Text('Name',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
       ),
      const Padding(
         padding:  EdgeInsets.only(top:8.0, bottom: 8.0),
         child:  Text('anjeelaali6@gmail.com'),
       ),
       const Text('+29-1234567890'),

         ],
        
      ),
    );
  }
}