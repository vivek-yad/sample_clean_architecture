import 'package:clean_architecture/features/numbers_triva/domain/entities/number_trivia.dart';
import 'package:clean_architecture/features/numbers_triva/domain/repositories/number_trivia_rpositry.dart';
import 'package:clean_architecture/features/numbers_triva/domain/usecases/get_concrete_trivia_number.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia? usecase;
  MockNumberTriviaRepository ?mockNumberTriviaRepository;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository??MockNumberTriviaRepository());
  });
  final tNumber = 40;
  final tNumberTrivia = NumberTrivia(text: "text", numbers: 1);
  test(" should get trivia for the number from ", () async {
    //arrange
    when(mockNumberTriviaRepository?.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => Right(tNumberTrivia));
    //final result = await usecase?.execute(number: tNumber);
   // final result = await usecase!(number: tNumber);
    final result = await usecase!( Params(number: tNumber));
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository?.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
