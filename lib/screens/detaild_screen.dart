import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/models/planet_model.dart';
import 'package:planets_app/widgets/text_details.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key});
  static const String routeName ="details";
  Flutter3DController controller = Flutter3DController();

  
  @override
  Widget build(BuildContext context) {
    var planet = ModalRoute.of(context)?.settings.arguments as Planet;
    return Scaffold(
       backgroundColor:const Color(0xff0E0E0E),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    SizedBox(
                  height: 237,
                  child: Stack(
                    children: [
                      Container(
                       foregroundDecoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff0E0E0E), Colors.transparent, Colors.transparent, Color(0xff0E0E0E)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0, 0.2, 0.2, 1],
                        ),
                       ),
                        child: Image.asset("assets/images/header.png")
                        ),
                      Column(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(planet.name,style: GoogleFonts.spaceGrotesk(
                                  textStyle:const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700
                                  )
                                ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 100,),
                          Text(planet.title,style: GoogleFonts.spaceGrotesk(
                            textStyle:const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                            )
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
                  //The 3D viewer widget for glb and gltf format
                        AspectRatio(
                          aspectRatio: 1,
                          child: Flutter3DViewer(
                              
                              activeGestureInterceptor: true,
                              progressBarColor: Colors.orange,
                              enableTouch: true,
                            
                              controller: controller,
                              src: planet.modelPath, 
                          ),
                        ),

                     const Text("About",style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                           fontWeight: FontWeight.w700
                           ),
                             ),
                              Text(planet.details,
                             style:const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                           fontWeight: FontWeight.w300
                           ),
                             ),
                             const SizedBox(height: 20,),
                    DetailsText(text: "Distance from Sun (km) : ${planet.distance}"),
                    DetailsText(text: "Length of Day (hours) : ${planet.length}"),
                    DetailsText(text: "Orbital Period (Earth years) : ${planet.period}"),
                    DetailsText(text: "Radius (km) : ${planet.radius}"),
                    DetailsText(text: "Mass (kg) : ${planet.mass}"),
                ],
              ),
            ),
          ),
    );
  }
}