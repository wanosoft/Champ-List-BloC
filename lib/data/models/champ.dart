import 'package:moor_flutter/moor_flutter.dart';

class Champs extends Table {
  TextColumn get id => text().withLength(min: 1, max: 50)();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  
  @override
  Set<Column> get primaryKey => {id};
}