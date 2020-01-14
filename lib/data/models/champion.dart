/// Request models to handle JSON responses
class Champ {
  final String version;
  final String id;
  final String key;
  final String name;
  final String title;
  final String description;

  Champ({
    this.version,
    this.id,
    this.key,
    this.name,
    this.title,
    this.description
  });

  factory Champ.fromJSON(Map<String,dynamic> json) {
    return Champ(
      version: json['version'],
      id: json['id'],
      key: json['key'],
      name: json['name'],
      title: json['title'],
      description: json['blurb'],
    );
  }
}

class ChampionResponse {
  final String type;
  final String format;
  final String version;
  final List<Champ> champs;

  ChampionResponse({
    this.type,
    this.format,
    this.version,
    this.champs
  });

  factory ChampionResponse.fromJSON(Map<String,dynamic> json){
    List<Champ> champs = List();
    json['data'].forEach((key,value) => champs.add(Champ.fromJSON(value)));
    return ChampionResponse(
      type: json['type'],
      format: json['format'],
      version: json['version'],
      champs: champs
    );
  }
}