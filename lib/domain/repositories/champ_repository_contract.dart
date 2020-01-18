import 'package:my_bloc/domain/entities/champ.dart';

abstract class ChampRepository {
  Stream<List<Champion>> watchAllChamps();
  Future<Champion> fetchDetailedChampDescription(String name);
} 