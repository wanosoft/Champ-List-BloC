import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_bloc/domain/entities/champ.dart';
import 'package:my_bloc/domain/repositories/champ_repository_contract.dart';
import 'package:my_bloc/domain/usecases/get_all_champs.dart';

class MockChampRepository extends Mock implements ChampRepository {}

void main() {
  ShowAllChamps usecase;
  MockChampRepository mockChampRepository;

  
  setUp((){
    mockChampRepository = MockChampRepository();
    usecase = ShowAllChamps(mockChampRepository);
  });

  final Champion tchamp = Champion(name: "Sett", title: "Goku in runaterra", description: "This was a test blA BLA");
  final String name = "Sett";

  test('Get Champion from repository', () async {
    when(mockChampRepository.fetchDetailedChampDescription(any))
    .thenAnswer((_) async => tchamp);
    final result = await usecase.fetchChampByName(name: name);
    expect(result, tchamp);
    verify(mockChampRepository.fetchDetailedChampDescription(name));
    verifyNoMoreInteractions(mockChampRepository);
  });
}