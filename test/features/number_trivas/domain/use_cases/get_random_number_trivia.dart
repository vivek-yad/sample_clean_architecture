import 'package:clean_architecture/features/numbers_triva/domain/entities/number_trivia.dart';
import 'package:clean_architecture/features/numbers_triva/domain/repositories/number_trivia_rpositry.dart';
import 'package:clean_architecture/features/numbers_triva/domain/usecases/get_random_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia? usecase;
  MockNumberTriviaRepository ?mockNumberTriviaRepository;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase =  GetRandomNumberTrivia(mockNumberTriviaRepository??MockNumberTriviaRepository());
  });
  final tNumber = 40;
  final tNumberTrivia = NumberTrivia(text: "text2", numbers: 1);
  test(" should get trivia forrandom from ", () async {
    //arrange
    when(mockNumberTriviaRepository?.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));
    //final result = await usecase?.execute(number: tNumber);
    // final result = await usecase!(number: tNumber);
    final result = await usecase!(NoParams());
    //assert
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository?.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
