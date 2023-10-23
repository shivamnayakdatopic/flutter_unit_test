// ##################### Test code for Method :----

// class Main{

//   int value = 0;

//   void increment() => value++;

//   void decrement() => value--;

//   void incrementPlus2() => value+=2;
// }


// ##################### Test code for Widget :----

import 'package:flutter/material.dart';

void main(){runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Testing"),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
         const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Enter Text"),
          ),

        TextButton(onPressed: (){}, child: const Text(""))
      ],
    );
  }
}
