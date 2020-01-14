import 'package:dio/dio.dart';
import 'package:my_bloc/data/models/champion.dart';

/// [LoLApiProvider] asks data from server
class LoLApiProvider {
  static String url = "http://ddragon.leagueoflegends.com/cdn/9.18.1/data/es_ES/champion.json";
  static final dio = Dio();

  /// Generical get method, GET to any REST API
  /// -> `response` unparsed JSON
  static Future<Response> genericGet(String requestURL) async {
    final response = await dio.get(requestURL);
    return response;
  }

  static Future<ChampionResponse> getChamps() async {
    var unparsedData = await genericGet(url);
    return ChampionResponse.fromJSON(unparsedData.data);
  }
}