import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/core/platform/netork_info.dart';
import 'package:clean_architecture/features/numbers_triva/data/data_source/number_trivia_data_local_sorce.dart';
import 'package:clean_architecture/features/numbers_triva/domain/entities/number_trivia.dart';
import 'package:clean_architecture/features/numbers_triva/domain/repositories/number_trivia_rpositry.dart';
import 'package:dartz/dartz.dart';

import '../data_source/number_trivia_data__remote_source.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaLocalDataSource ?localDataSource;
  final NumberTriviaRemoteDataSource? remoteDataSource;
  final NetworkInfo? networkInfo;

  NumberTriviaRepositoryImpl(
  { this.networkInfo, this.remoteDataSource,this.localDataSource});

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int? number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
