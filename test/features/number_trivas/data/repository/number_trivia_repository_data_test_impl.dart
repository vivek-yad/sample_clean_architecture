import 'package:clean_architecture/core/platform/netork_info.dart';
import 'package:clean_architecture/features/numbers_triva/data/data_source/number_trivia_data__remote_source.dart';
import 'package:clean_architecture/features/numbers_triva/data/data_source/number_trivia_data_local_sorce.dart';
import 'package:clean_architecture/features/numbers_triva/data/repositries_imp/number_trivia_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
class MockRemoteDataSource extends Mock implements NumberTriviaRemoteDataSource{}
class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource{}
class MockNetworkInfo extends Mock implements NetworkInfo{}

void main(){
  NumberTriviaRepositoryImpl repository;
  MockLocalDataSource mockLocalDataSource;
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;
  setUp(() {
    mockRemoteDataSource =MockRemoteDataSource();
    mockNetworkInfo=MockNetworkInfo();
    mockLocalDataSource=MockLocalDataSource();
    repository=NumberTriviaRepositoryImpl(
      remoteDataSource:mockRemoteDataSource,
      networkInfo:mockNetworkInfo,
      localDataSource: mockLocalDataSource
    );
  });
}
