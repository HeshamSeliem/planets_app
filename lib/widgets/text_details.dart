import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsText extends StatelessWidget {
   DetailsText({super.key, required this.text});

   String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10 , bottom: 10),
      child: Text("$text",style:const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                           fontWeight: FontWeight.w700
                           ),
                             ),
    );
  }
}