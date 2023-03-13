import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/features/numbers_triva/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

abstract class NumberTriviaRepository{
  Future <Either<Failure,NumberTrivia>>getConcreteNumberTrivia(int ?number);
  Future<Either<Failure,NumberTrivia>>getRandomNumberTrivia();
}