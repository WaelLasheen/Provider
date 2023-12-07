import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task/provider/data.dart';
import 'package:provider_task/screens/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => data(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: signUp(),
      ),
    );
  }
}