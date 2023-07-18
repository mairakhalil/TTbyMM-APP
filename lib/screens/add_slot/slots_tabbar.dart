import 'package:flutter/material.dart';
import 'package:milk_n_munchies/screens/add_slot/slots_data.dart';

class SlotsTabBar extends StatefulWidget {
  const SlotsTabBar({super.key});
  @override
  State<SlotsTabBar> createState() => _SlotsTabBarState();
}

class _SlotsTabBarState extends State<SlotsTabBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Book Slot",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
        ),
        Expanded(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 1))),
                  padding: const EdgeInsets.only(right: 10, top: 20),
                  child: const TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(text: "Location"),
                      Tab(text: "Slot"),
                      Tab(text: "Suggestion"),
                    ],
                    labelPadding: EdgeInsets.zero,
                  ),
                ),
                const SlotsData()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
