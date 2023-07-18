import 'package:flutter/material.dart';
import 'package:milk_n_munchies/screens/account/account_List.dart';
import 'package:milk_n_munchies/screens/account/accounts_header.dart';
import 'package:milk_n_munchies/screens/account/toggle_switch.dart';


class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Column(
      children: [
        AccountHeader(),
        Align(
          alignment: Alignment.centerLeft,
          child:  Padding(
            padding: EdgeInsets.only(left:17.0, top: 30.0, bottom: 13.0),
            child: Text(
              'Advance Setting',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
         AccountListTile(
          icon: Icons.keyboard_arrow_right,
          text: 'Profile Edit',
          ),
           AccountListTile(
          icon: Icons.add,
          text: 'Add Payment Method',
          ),
           SwitchToggle(
            text:'Push Notification',
             button: '',
          ),
           SwitchToggle(
            text:'Privacy Policy',
             button: '',
          ),
           Align(
          alignment: Alignment.centerLeft,
          child:  Padding(
            padding: EdgeInsets.only(left:17.0, top: 25.0, bottom: 13.0),
            child: Text(
              'More',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
          AccountListTile(
          icon: Icons.keyboard_arrow_right,
          text: 'About us',
          ),
            AccountListTile(
          icon: Icons.keyboard_arrow_right,
          text: 'Privacy Policy',
          ),
           
      ],
    );
  }
}
