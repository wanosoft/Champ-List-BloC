import 'package:moor_flutter/moor_flutter.dart';
import 'package:my_bloc/data/models/champ.dart';
import 'package:my_bloc/data/moor_database.dart';

part 'champs_dao.g.dart';

@UseDao(tables: [Champs])
class ChampDao extends DatabaseAccessor<LeagueDatabase> with _$ChampDaoMixin {
  final LeagueDatabase db;

  ChampDao(this.db) : super(db);

  Future insertChamp(Insertable<Champ> champ) => into(champs).insert(champ);
}