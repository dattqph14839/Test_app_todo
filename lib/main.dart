import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app_todo/controllers/note_controller.dart';
import 'package:test_app_todo/views/detail.dart';
import 'package:test_app_todo/views/main_page.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NoteController())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MainPage(),
      routes: {
        detail.routeName: (ctx) => const detail(),
      },
    );
  }
}
