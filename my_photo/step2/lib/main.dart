import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_photo/firebase_options.dart';
import 'package:my_photo/page/home_page.dart';
import 'package:my_photo/page/search_result_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SearchResultPage.routeName: (context) {
          final searchTerm =
              ModalRoute.of(context)!.settings.arguments as String;
          return SearchResultPage(searchTerm);
        },
      },
    );
  }
}
