import 'package:flutter/material.dart';
class AccountListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  const AccountListTile({Key? key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Text(text),
      trailing: IconButton(
        onPressed: () {},
        icon:Icon(icon),
      ),
    );
  }
}
