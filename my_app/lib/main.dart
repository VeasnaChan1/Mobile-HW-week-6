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
              CustomButton
              (
                label : "Submit",
                color: Colors.blue,
                icon : Icons.travel_explore,
                direction: TextDirection.rtl,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: CustomButton
                (label: "Time", icon: Icons.skateboarding, color : Colors.green),
              ),

              CustomButton
              (label: "Account", icon:Icons.downhill_skiing_outlined, color: Colors.grey, ),

            ],
          ),
        ),
      ),


    );
  }
}

class CustomButton
 extends StatelessWidget {

  final String label;
  final IconData icon;
  final Color? color;
  final TextDirection? direction;

  const CustomButton
  ({
    this.color = Colors.green,
    this.direction = TextDirection.ltr,
    required this.label,
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
        textDirection: direction,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30,20,20,20),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
              
          Text(label,
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
