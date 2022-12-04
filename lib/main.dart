import 'package:flutter/material.dart';
import 'package:myapi1/src/my_provider.dart';
import 'package:myapi1/src/pages/my_home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: ((context) => UserProvider()),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
