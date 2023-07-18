import 'package:flutter/material.dart';

import '../screens/constants/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key });

  @override
  Widget build(BuildContext context) {

 return Padding(
   padding: const EdgeInsets.only(top: 23, left: 22, right:22),
   child: SizedBox(
        width: 370,
        height: 32,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
             Icons.search,
              color:Color(0XFF787579),
            ),
          hintText:"Search Your Topic",
            hintStyle:  const TextStyle(color: Color(0XFF787579), fontSize: 14,),
            contentPadding: const EdgeInsets.only(top:4, bottom: 4),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: inputtextcolor))
          ),
          style:  TextStyle(color:inputtextcolor),
        ),
      ),
 );
  
  }
}