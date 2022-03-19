import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  Color iconColor = Colors.black;

  void changeColour() {
    counter++;
    if (iconColor == Colors.black) {
      iconColor = Colors.red;
    }else{
      iconColor = Colors.black;
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("stateful example"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    changeColour();
                  });
                },
                child: Icon(Icons.favorite, color: iconColor, size: 60.0,)
              ),
              Text('this a tapped $counter time(s)'),
            ],
          )
        ),
      ),
    );
  }
}
