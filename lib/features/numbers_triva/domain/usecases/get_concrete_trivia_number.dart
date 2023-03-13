import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/core/use_cases/use_cases.dart';
import 'package:clean_architecture/features/numbers_triva/domain/entities/number_trivia.dart';
import 'package:clean_architecture/features/numbers_triva/domain/repositories/number_trivia_rpositry.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia,Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  // Future<Either<Failure, NumberTrivia>> execute({
  //   required int number,
  // }) async {
  //   return await repository.getConcreteNumberTrivia(number);
  // }
@override
  Future<Either<Failure, NumberTrivia>>call(Params params,
  ) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}
class Params extends Equatable{
  final  int number;
  const Params({required this.number});
  @override
  //
  List<Object?> get props => [number];

}
