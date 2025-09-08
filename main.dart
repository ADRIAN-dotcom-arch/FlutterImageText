import 'package:flutter/material.dart';

/* the purpose of this sysntax is to import the flutter material design library widgets
tools for building the material design UI (google design system)

import - dart keyword to include external libraries

pakage:flutter - refers to the material pakage that comes with flutter

this is essential for building flutter apps w/ a standard UI.
**/

void main() { // Entry point of a Flutter app
  runApp(const MyApp()); // runApp() that initialize the app and attached the root widgets(MyApp) to the screen,
  //creates an instance of the MyApp widget, that marked cont for compile-time (immutable)
}


class MyApp extends StatelessWidget {
  //MyApp is a custom class that extends StatelessWidget
  //StatelessWidget - base class for widgets that do not hold mutable state
  const MyApp({super.key});//constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(// app structure
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),//initial screen
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity 1'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Windbreaker.jpg',
                width: 500,
                height: 400,),
              const SizedBox(height: 7),
              const Text(''
                  'Windbreaker',
                  style: TextStyle(fontSize: 45)
              ),
              Text('Wind Breaker is a South Korean manhwa that follows the journey of Jay, a high school student who is not only academically brilliant but also a skilled biker. After being coerced into joining the Hummingbird Crew, Jay discovers a new world of adventure and competition. The series is known for its blend of sports drama, slice of life, school life, romance, and comedy, with a unique focus on cycling and the connections that arise from it. The manhwa has been serialized on Naver Webtoon and has been published in English by Line Webtoon.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30)
              )

            ],
          )
      ),
    );
  }
}