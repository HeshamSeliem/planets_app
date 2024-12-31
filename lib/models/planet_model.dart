class Planet {
  String name;
  String image;
  String title;
  String details;
  String distance;
  String length;
  String period;
  String radius;
  String mass;
  String modelPath;
  Planet(
      { 
      required this.name,
      required this.image,
      required this.title,
      required this.details,
      required this.distance,
      required this.length,
      required this.period,
      required this.radius,
      required this.mass,
      required this.modelPath
      });

static List<Planet> planets =[
  Planet(
    name: "Earth",
    image: "assets/images/earth.png",

    modelPath: "assets/models/earth.glb",
    
    title: "Earth: Our Blue Marble"
,
    details: "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",

     distance: "149598026",

      length: "23.93",
       period: "23.93",
        radius: "6371",
         mass: "5.972 × 10²⁴",
),
Planet(
  name: "Mercury",
  title: "Mercury: The Closest Planet",
 image: "assets/images/mercury.png",
 modelPath: "assets/models/mercury.glb",
 details: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",

  distance: "57909227",

   length: "1407.6",
    period: "0.24",
     radius: "2439.7",
      mass: "3.301 × 10²³",
),
Planet(
  name: "Jupiter",
  title: "Jupiter: The Gas Giant",
 image: "assets/images/jupiter.png",
  modelPath: "assets/models/jupiter.glb",
 details: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
  distance: "778547669",
   length: "9.92",
    period: "11.86",
     radius: "69911",
      mass: "1.898 × 10²⁷"
),
Planet(
  name: "Neptune",
  title: "Neptune: The Distant World",
 image: "assets/images/neptune.png",
 modelPath: "assets/models/neptune.glb",
 details: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
  distance: "4498252900",
   length: "16.11",
    period: "164.8",
     radius: "24622",
      mass: "1.024 × 10²⁶"),
Planet(
  name: "Mars",
  title: "Mars: The Red Planet",
   image: "assets/images/mars.png",
   modelPath: "assets/models/mars.glb",
 details: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
  distance: "227943824",
   length: "24.62",
    period: "1.88",
     radius: "3389.5",
      mass: "6.39 × 10²³")     

];
}