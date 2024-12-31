import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomElvBtn extends StatelessWidget {
   CustomElvBtn({required this.onPressed,required this.pName, super.key});
   Function onPressed;
  String pName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton( 
             style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              backgroundColor:const Color(0xffEE403D),
             ),
              onPressed:()
              { 
                onPressed();
              },
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
              
                 Text("Explor $pName",style: GoogleFonts.inter(
                textStyle:const TextStyle(
                  fontSize: 20,
                  color: Colors.white
                )
                 ),),
                const Icon(Icons.arrow_forward,color: Colors.white,)
               ],
             ),
        
             );
  }
}