import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoping/screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          // leading: const BackButton(),
          title: const Text(
            "Welcome to our app",
          ),
          centerTitle: true,
        ),
        drawer: Drawer(


          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.of(context).push(Screen1 as Route<Object?>);
              }, child: Text("screen1")),
              Divider(thickness: 2,),

              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  // MaterialPageRoute(builder: (context) => PsychologicalTestsScreen()),);
                  MaterialPageRoute(
                      builder: (context) => const Screen1()),
                );
                // Navigator.of(context).push(Screen1 as Route<Object?>);
              }, child: Text("screen2")),
              Divider(thickness: 2,),

              TextButton(onPressed: (){
                Navigator.of(context).push(Screen1 as Route<Object?>);
              }, child: Text("screen3")),
              Divider(thickness: 2,),
            ],
          ),

        ),
        body:  Text("Hello"),
      ),

    );
  }
}