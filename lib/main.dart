import 'package:flutter/material.dart';

void main() => {runApp(const MaterialApp(
  title: "Navigation Basics",
  home: MyApp(),
))};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FIRST ROUTE!"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondRoute(),),
          );
        }, child: Text("CLICK ME => SECOND ROUTE"),),
      ),
    );
  }}

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SECOND ROUTE"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("HOME PAGE!"),),
      ),
    );
  }}