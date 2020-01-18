import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:my_bloc/data/models/api_response_objects.dart';
import 'package:my_bloc/data/providers/lol_api_provider.dart';

void main() {

  test('Get Champs from API Provider', () async {
    var champsResponse = await LoLApiProvider.getChamps();
    var randomIndex = Random().nextInt(champsResponse.champs.length-1);
    print('Champs in patch '+ champsResponse.version + ' = ' + champsResponse.champs.length.toString());
    print('Random champ name: ' + champsResponse.champs[randomIndex].name);
    expect(ChampionResponse, champsResponse.runtimeType);
  });
}