import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.blue,
        title: const Text('Hello World'),
      ),
      body: Column (
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: const Center(
                    child: Text('Hello World'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 100,
                  child: const Center(
                    child: Text('Hello World'),
                  ),
                ),
              ),
            ],
          ),
          Row(

            children: [
             Expanded(
               child: SizedBox(
                  height: 100,
                 child: Row (
                   children: [
                     Expanded(
                       child: Column (
                           children: const [
                             Expanded(
                                 child:  Center (
                                   child: Text('Hello World'),

                                 )
                             )
                           ]
                       ),
                     ),
                     Expanded(
                       child: Column (
                           children: const [
                             Expanded(
                               child:  Center (
                                  child: Text('Hello World'),

                               )
                             )
                           ]
                       ),
                     ),
                   ]
                 )
               )
             )
            ],
          ),
        ],
      )
    ));
  }
}
