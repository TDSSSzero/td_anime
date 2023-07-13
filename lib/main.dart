import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:td_anime/db/anime_db.dart';
import 'package:td_anime/module/home.dart';

void main() {
  runApp(Provider<AnimeDatabase>(
    create: (context)=>AnimeDatabase(),
    child: const MyApp(),
    dispose: (context,db)=>db.close(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}