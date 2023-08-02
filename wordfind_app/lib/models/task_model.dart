import 'dart:ffi';

import 'char_model.dart';

class TaskModel {
  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModels> puzzles = [];
  List<String> arrayButtons = [];
  TaskModel({
    required this.pathImage,
    required this.question,
    required this.answer,
    this.arrayButtons = const [],
  });
  void setWordfind(CharModels puzzles) {
    this.puzzles = puzzles as List<CharModels>;
  }

  void setIsDone() {
    isDone = true;
  }

  bool fieldCompleteCorrect() {
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if (!complete) {
      isFull = false;
      return complete;
    }
    isFull = true;
    String answeredString = puzzles.map((puzzle) => puzzle.currentValue).join("");
    return answeredString== answer;
  }
  TaskModel clone(){
    TaskModel task = TaskModel(
      answer:answer,
    pathImage: pathImage,
      question: question,
    );
    return task;
  }
}
