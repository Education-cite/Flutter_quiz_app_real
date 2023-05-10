import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter QuizApp',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      
      child: Scaffold(
        appBar: AppBar(title: Text("Mcq Quiz App"),),
        drawer: Drawer(),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      CustomButton(level: "Level One",),
                      CustomButton(level: "Level Two",),
                      CustomButton(level: "Level Three",),
                      CustomButton(level: "Level Four",),
                    ],
                  ),
                ),
                
                )
            ],
          ),
        ),
      ), 
      onWillPop: null);
  }
}

class CustomButton extends StatelessWidget {
  final String level;
  const CustomButton({
    super.key,required this.level
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: MaterialButton(
        padding: EdgeInsets.all(15.0),
        color: Colors.teal,
        onPressed: (){
          var route = MaterialPageRoute(builder: (context)=>QuizPage());
          Navigator.push(context, route);
        },
        child: Text(
          level,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
        ),
    );
  }
}


  