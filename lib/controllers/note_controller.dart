import 'package:flutter/cupertino.dart';
import 'package:test_app_todo/models/note_model.dart';

class NoteController extends ChangeNotifier {
  List<NoteModel> listOfNotes = [
    NoteModel(
        title: 'Living Rom',
        content:
            'Need done before',
        time: DateTime.now())
  ];

  void sortNewest() {
    listOfNotes.sort((a, b) {
      return a.time!.millisecondsSinceEpoch
          .compareTo(b.time!.millisecondsSinceEpoch);
    });
    listOfNotes = listOfNotes.reversed.toList();
    notifyListeners();
  }

  void sortAlphabet() {
    listOfNotes.sort((a, b) {
      return a.title!.compareTo(b.title!);
    });
    notifyListeners();
  }

  void addNote(NoteModel noteModel) {
    listOfNotes.add(noteModel);
    notifyListeners();
  }

  void editNote(NoteModel editedNote, int index) {
    listOfNotes[index] = editedNote;
    notifyListeners();
  }

  void deleteNote(int index) {
    listOfNotes.removeAt(index);
    notifyListeners();
  }
}
