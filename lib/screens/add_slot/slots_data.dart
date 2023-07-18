import 'package:flutter/material.dart';
import 'package:milk_n_munchies/screens/add_slot/slots_radiobtn.dart';
import 'package:milk_n_munchies/screens/add_slot/suggestion.dart';

import 'calender.dart';

class SlotsData extends StatelessWidget {
  const SlotsData({super.key});

  @override
  Widget build(BuildContext context) {
    return    Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: TabBarView(
                      children: [
                        const Text("Tab1"),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Service as",
                                ),
                              ),
                              const SlotsRadio(),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Select Date")),
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                width: double.infinity,
                                height: 500,
                                child: const Calander(),
                              )
                            ],
                          ),
                        ),
                        const Suggestion(),
                      ],
                    ),
                  ),
                );
            
  }
}