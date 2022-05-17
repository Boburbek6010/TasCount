# TasCount App

A new Flutter project.

## Getting Started

### Description:

### assets:
####   - images: 
######        img.jpg
### lib: 
####   - screens:
######        home_screen.dart 
######        second_screen.dart 
####   - main.dart

## UI:
### | <img src="assets/images/Screenshot_2022-05-18-00-45-14-384_com.example.darsda.jpg" width="250"> | <img src="assets/images/Screenshot_2022-05-18-00-45-22-244_com.example.darsda.jpg" width="250"> | <img src="assets/images/Screenshot_2022-05-18-00-45-19-233_com.example.darsda.jpg" width="250">

## Example:
## 
## 
## 
## 
## 
## 
## 
## 
## 
## 
## 
## 
## 

```
import 'package:darsda/screens/home_screen.dart';
import 'package:darsda/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        SecondScreen.id: (context) => const SecondScreen(),
      },
    );
  }
}



```

```
function test() {
  console.log("notice the blank line before this function?");
}
```





This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
