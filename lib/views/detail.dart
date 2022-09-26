import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app_todo/controllers/note_controller.dart';
import 'package:test_app_todo/models/note_model.dart';

class detail extends StatefulWidget {
  static const routeName = '/product-detail';
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  String get getTitle => ModalRoute.of(context)?.settings.arguments as String;
  NoteModel? get loadDetail => context.read<NoteController>().findByTitle(getTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:  AppBar(
          title: Text(loadDetail?.title?? ''),


),
      body: Container(
        child: Column(
children: [

              Text('Date:   ${loadDetail?.time.toString()?? ''}'),
              SizedBox(height: 10),
              Text('Context:  ${loadDetail?.content?? ''}'),
],
        ),
      )

    );
  }
}
