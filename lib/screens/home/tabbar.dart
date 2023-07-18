import 'package:flutter/material.dart';
import 'package:milk_n_munchies/screens/constants/colors.dart';
import 'package:milk_n_munchies/screens/home/mentoring_card.dart';

class CustomTabBarWidget extends StatefulWidget {
  const CustomTabBarWidget({super.key});
  @override
  State<CustomTabBarWidget> createState() => _CustomTabBarWidgetState();
}
class _CustomTabBarWidgetState extends State<CustomTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400, // Adjust the height as per your requirements
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 22, top: 25),
            child: Text(
              "Mentoring",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TabBar(
                      labelColor: Colors.black,
                      indicatorColor: inputtextcolor,
                      tabs: const [
                        Tab(text: "All"),
                        Tab(text: "Technology"),
                        Tab(text: "Music"),
                        Tab(text: "Cooking"),
                        Tab(text: "Sports"),
                      ],
                      labelPadding: EdgeInsets.zero,
                    ),
                  ),
                Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 26, top: 0, right: 26),
                        child: SizedBox(
                          child: TabBarView(
                            children: [
                              GridView.count(
                                crossAxisCount: 2,
                                children: const [
                                  CustomCard(imagePath:'assets/images/card1.png'),
                                  CustomCard( imagePath:'assets/images/card2.png'),
                                  CustomCard( imagePath:'assets/images/card3.png'),
                                  CustomCard(imagePath:'assets/images/card4.png'),
                                  CustomCard( imagePath:'assets/images/card5.png'),
                                  CustomCard(imagePath:'assets/images/card5.png'),
                                ],
                              ),
                              const Text("Tab2"),
                              const Text("Tab3"),
                              const Text("Tab4"),
                              const Text("Tab5"),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
