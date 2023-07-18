import 'package:flutter/material.dart';
import 'package:milk_n_munchies/screens/constants/colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 38),
            child: Text(
              "Offer mentorships and earn",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 22),
            child: Row(
              children: [
                Icon(Icons.notifications_none, color: Color(0xFFF37C0D)),
                Padding(
                  padding: EdgeInsets.only(left: 9),
                  child: Text(
                    "Your Coming Slots",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, bottom: 23),
            child: Container(
              padding: const EdgeInsets.only(top: 8, left: 18, bottom: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFE6E6FE),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "9:00 AM",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Text(
                          "2023/06/01",
                          style: TextStyle(fontSize: 8),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Text(
                          "using AI tools as a student",
                          style: TextStyle(fontSize: 8),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                      width: 65,
                      child: Text(
                        "Milk and Munches,Zulfqarabad, Gilgit",
                        style: TextStyle(fontSize: 8, color: inputtextcolor),
                      )),
                  Icon(
                    Icons.more_vert,
                    color: inputtextcolor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
