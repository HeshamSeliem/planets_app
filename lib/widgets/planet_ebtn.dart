import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlanetEbtn extends StatelessWidget {
   PlanetEbtn({required this.icon,required this.onPressed, super.key});
  IconData icon;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(14),
                  backgroundColor:const Color(0xffEE403D),
                  shape: const CircleBorder(),
                ),
                onPressed:(){
                   onPressed();
                   },
               child:  Icon(icon,color: Colors.white,)
               );
  }
}