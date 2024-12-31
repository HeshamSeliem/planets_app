import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/screens/home_screen.dart';
import 'package:planets_app/widgets/elev_button.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E0E0E),
      body: Stack(
          children: [Image.asset(
        "assets/images/half_image.png",
        height: double.infinity,
      ),
       Padding(
         padding: const EdgeInsets.all(16),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           const Text(""),
              Text("Explore\nThe\nUniverse",style: GoogleFonts.inter(
               textStyle: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w900,
              color: Colors.white
                   )
                 )),
            CustomElvBtn(
              pName: "",
              onPressed: ()
              {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName,
              
                );
              },
            )
           ],
         ),
       )
      ]),
    );
  }
}
