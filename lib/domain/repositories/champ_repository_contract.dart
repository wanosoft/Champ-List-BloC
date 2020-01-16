import 'package:my_bloc/domain/entities/champ.dart';

abstract class ChampRepository {
  Future<String> fetchChamp();
  Future<Champion> fetchDetailedChampDescription(String name);
}