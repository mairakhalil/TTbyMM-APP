import 'package:flutter/material.dart';
import 'package:milk_n_munchies/screens/account/account.dart';
import 'package:milk_n_munchies/screens/add_slot/add_slot.dart';
import 'package:milk_n_munchies/screens/home/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
   int _bottomSelectedItem=0;
   final _pagesData=[const HomePage(), const AddSlot(), const AccountScreen()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("Hi, Maira!", style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const BackButton(color:Color(0xFFF37C0D)),
      titleSpacing: 0,
      actions: [ IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none, color: Colors.black,),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.person_3_outlined, color: Colors.black,)),
      ],),
     body:_pagesData[_bottomSelectedItem],
     bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.add,), label: "Add slot"),
        BottomNavigationBarItem(icon: Icon(Icons.settings,), label: "Account"),
     ],
     currentIndex: _bottomSelectedItem,
     selectedItemColor: const Color(0xFFF37C0D),
     onTap: (setValue){
      setState(() {
        _bottomSelectedItem=setValue;
      });
     },
     ),
    ));
  }
}