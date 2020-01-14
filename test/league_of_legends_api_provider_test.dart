import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:my_bloc/data/models/champion.dart';
import 'package:my_bloc/data/providers/league_of_legends_api_provider.dart';

void main() {
  test('Get Champs from API Provider', () async {
    var champsResponse = await LoLApiProvider.getChamps();
    var randomIndex = Random().nextInt(champsResponse.champs.length-1);
    print(champsResponse.champs[randomIndex].name);
    expect(ChampionResponse, champsResponse.runtimeType);
  });
}
