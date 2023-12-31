import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:forg/main_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.brown),
      home: const Myy(),
    );
  }
}

class Myy extends StatelessWidget {
  const Myy({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }
}
