// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:clean_architecture/features/numbers_triva/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({required super.text, required super.numbers});

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      text: json["text"],
      numbers: (json["numbers"] as num).toInt(),
    );
  }
  Map<String,dynamic>toJson(){
    return{
      "text":text,
      "numbers":numbers
    };
  }
}
