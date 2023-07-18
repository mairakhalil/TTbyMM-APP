import 'package:flutter/material.dart';
import 'package:milk_n_munchies/components/search.dart';
import 'package:milk_n_munchies/screens/home/header.dart';
import 'package:milk_n_munchies/screens/home/tabbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [HomeHeader(), SearchField(), CustomTabBarWidget()],
        
      ),
    );
  }
}
