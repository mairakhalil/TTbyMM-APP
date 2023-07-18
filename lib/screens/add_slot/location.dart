import 'package:flutter/material.dart';
class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String? _selectedCountry;
  String? _selectedCity;
  // ignore: unused_field
  String? _outletName;

  List<String> countries = ['Pakistan', 'America', 'India'];
  List<String> cities = ['Gilgit', 'Islamabad', 'Karachi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: [
         const Align(
          alignment: Alignment.centerLeft,
            child:  Padding(
              padding:  EdgeInsets.only(top:15.0,),
              child:   Text('Fill  the form to choose your slot',    
                          style: TextStyle(
                            color: Colors.grey, 
                            fontSize: 15.0
                          ),),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
             child:  Padding(
              padding:  EdgeInsets.only( bottom: 15.0),
              child:   Text('on your availability date',    
                          style: TextStyle(
                            color: Colors.grey, 
                            fontSize: 15.0
                          ),),
                     ),
           ),
            DropdownButtonFormField<String>(
              value: _selectedCountry,
              items: countries.map((country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCountry = value;
                });
              },
              decoration:const InputDecoration(
                labelText: 'Select Country',
              ),
            ),
           const SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: _selectedCity,
              items: cities.map((city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCity = value;
                });
              },
              decoration:const InputDecoration(
                labelText: 'Select City',
              ),
            ),
           const SizedBox(height: 16.0),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _outletName = value;
                });
              },
              decoration:const InputDecoration(
                labelText: 'Outlet Name',
              ),
            ),
           const SizedBox(height: 16.0),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _outletName = value;
                });
              },
              decoration:const InputDecoration(
                labelText: 'Enter the theme Topic',
              ),
            ),
            // SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:13.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black
                ),
                onPressed: () {
                  
                },
                child:const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  child:  Text('Next',
                  style: TextStyle(
                    
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
