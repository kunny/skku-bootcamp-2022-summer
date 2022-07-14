import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_photo/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Photo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // TODO: Route 설정
    );
  }
}
