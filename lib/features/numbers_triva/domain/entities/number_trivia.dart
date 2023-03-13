// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';


class NumberTrivia extends Equatable{
  String text;
  int numbers;
  NumberTrivia({required this.text,required this.numbers,});

  @override
  List<Object?> get props => [text,numbers];

}