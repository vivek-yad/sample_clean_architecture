import 'dart:convert';
import 'dart:math';

import 'package:clean_architecture/features/numbers_triva/data/models/number_trivia_model.dart';
import 'package:clean_architecture/features/numbers_triva/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(text: " Hello", numbers: 1);
  test("get random trivia", () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });
  group("fromJson", () {
    test("Should return avalid model when the JSON number is regarded double",
            () {
          final Map<String, dynamic> jsonMap = json.decode(
              fixture("trivia.json"));
          final result = NumberTriviaModel.fromJson(jsonMap);
          expect(result, tNumberTriviaModel);
        });
  });
  group("toJson", () {
    test("should return a json map containing proper data", () {
      final result = tNumberTriviaModel.toJson();
      final expectedMap = {
        "text": "Test text.",
        "number": 1.0,
      };
      expect(result, expectedMap);
    });
  });
}
