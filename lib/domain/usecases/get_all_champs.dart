import 'package:flutter/foundation.dart';
import 'package:my_bloc/domain/entities/champ.dart';
import 'package:my_bloc/domain/repositories/champ_repository_contract.dart';

class ShowAllChamps {
  final ChampRepository repository;
  ShowAllChamps(this.repository);

  Stream<List<Champion>> watchAllChamps() {
    return repository.watchAllChamps();
  }

  Future<Champion> fetchChampByName({@required String name}) async {
    return repository.fetchDetailedChampDescription(name);
  }

  Future<List<Champion>> getChampsFromAPI() {
    return repository.getAllChamps();
  }
}