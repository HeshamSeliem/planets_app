import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/models/planet_model.dart';
import 'package:planets_app/screens/detaild_screen.dart';
import 'package:planets_app/widgets/elev_button.dart';
import 'package:planets_app/widgets/planet_ebtn.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});
 static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final PageController _controller = PageController();
  int currentIndex = 0;
 
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff0E0E0E),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Expor",style: GoogleFonts.spaceGrotesk(
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
                      Text("Which planet\nwould you like to explore?",style: GoogleFonts.spaceGrotesk(
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
           SizedBox(
            height: 340,
             child: PageView.builder(
              controller: _controller,
              onPageChanged: (index){
                currentIndex = index;
                setState(() {
                  
                });
              },
              itemBuilder: (context, index) => Image.asset(Planet.planets[index % 5].image),
              //itemCount: Planet.planets.length,
              scrollDirection: Axis.horizontal,
              ),
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PlanetEbtn(
                icon: Icons.arrow_back,
                 onPressed:()
                 {
                   _controller.animateToPage(
                    _controller.page!.toInt() - 1,
                     duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInSine);
  }),
               Text(Planet.planets[currentIndex % 5].name,
               style: GoogleFonts.spaceGrotesk(
                              textStyle:const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700
                              )
                            ),),
              PlanetEbtn(
                onPressed: (){
                  _controller.animateToPage(
                    _controller.page!.toInt() + 1,
                     duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInSine);
                },
               icon:  Icons.arrow_forward)
            ],
           ),
          
           CustomElvBtn(
            pName: Planet.planets[currentIndex % 5].name,
            onPressed: (){
               Navigator.pushNamed(context, DetailsScreen.routeName,
               arguments: Planet.planets[currentIndex % 5]
               );
            })
          ],
        ),
      ),
    );
  }

  
  
}