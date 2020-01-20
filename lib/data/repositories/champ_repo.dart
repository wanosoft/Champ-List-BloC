import 'package:my_bloc/data/providers/lol_api_provider.dart';
import 'package:my_bloc/domain/entities/champ.dart';
import 'package:my_bloc/domain/repositories/champ_repository_contract.dart';

class ChampRepo implements ChampRepository {

  @override
  Future<Champion> fetchDetailedChampDescription(String name) {
    // TODO: implement fetchDetailedChampDescription
    return null;
  }

  @override
  Stream<List<Champion>> watchAllChamps() {
    // TODO: implement watchAllChamps
    return null;
  }

  @override
  Future<List<Champion>> getAllChamps() async {
    var champsResponse = await LoLApiProvider.getChamps();
    List<Champion> parsedChampions = List();
    champsResponse.champs.forEach((unparsedChamp) {
      parsedChampions.add(
        Champion(
          title: unparsedChamp.title,
          name: unparsedChamp.name,
          id: unparsedChamp.id
        )
      );
    });
    return parsedChampions;
  }
}