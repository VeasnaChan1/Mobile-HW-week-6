import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Hobbies"),
          backgroundColor: const Color.fromARGB(255, 205, 237, 252),
        ),

        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(
                title : "Travelling",
                color: Colors.green,
                icon : Icons.travel_explore,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: HobbyCard(title: "Skating", icon: Icons.skateboarding, color : Colors.lightBlueAccent),
              ),

              HobbyCard(title: "Skiing", icon:Icons.downhill_skiing_outlined, color: Colors.pink, ),

            ],
          ),
        ),
      ),


    );
  }
}

class HobbyCard extends StatelessWidget {

  final String title;
  final IconData icon;
  final Color? color;

  const HobbyCard({
    this.color = Colors.green,
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      child: Row(
    
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30,20,20,20),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
              
          Text(title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight(20),
          ),),
        ],
      ),
    );
  }
}
