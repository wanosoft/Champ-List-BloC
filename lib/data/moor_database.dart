import 'package:moor_flutter/moor_flutter.dart';
import 'package:my_bloc/data/daos/champs_dao.dart';
import 'package:my_bloc/data/models/champ.dart';

part 'moor_database.g.dart';

@UseMoor(tables: [Champs], daos: [ChampDao])
class LeagueDatabase extends _$LeagueDatabase {
  LeagueDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
}