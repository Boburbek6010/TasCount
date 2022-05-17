import 'dart:ui';

import 'package:darsda/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  static const id = '/second_screen';
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {

    String first = 'SubhanAlloh';
    String second = 'Alhamdulillah';
    String third = 'AllohuAkbar';

    void goF(){
      Navigator.of(context).pop(first);
      count = 0;
    }

    void goS(){
      Navigator.of(context).pop(second);
      count = 0;
    }
    void goTH(){
      Navigator.of(context).pop(third);
      count = 0;
    }


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Zikrlar"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/ic_img1.jpg"),
                fit: BoxFit.cover
            ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: goF,
              color: Colors.transparent,
              child: Text(first, style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),),
              textColor: Colors.white,
              splashColor: Colors.cyanAccent,
              shape: StadiumBorder(),
              height: 60,
              minWidth: 300,

             ),
            MaterialButton(
              onPressed: goS,
              color: Colors.transparent,
              child: Text(second, style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),),
              textColor: Colors.white,
              splashColor: Colors.black,
              shape: StadiumBorder(),
              height: 60,
              minWidth: 300,

            ),
            MaterialButton(
              onPressed: goTH,
              color: Colors.transparent,
              child: Text(third, style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),),
              textColor: Colors.white,
              splashColor: Colors.cyanAccent,
              shape: StadiumBorder(),
              height: 60,
              minWidth: 300,

            ),
           ],
          ),
        ),
      ),
    );
  }
}
