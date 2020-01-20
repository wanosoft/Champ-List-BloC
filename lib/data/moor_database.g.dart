// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Champ extends DataClass implements Insertable<Champ> {
  final String id;
  final String name;
  final String title;
  Champ({@required this.id, @required this.name, @required this.title});
  factory Champ.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return Champ(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
    );
  }
  factory Champ.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Champ(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'title': serializer.toJson<String>(title),
    };
  }

  @override
  ChampsCompanion createCompanion(bool nullToAbsent) {
    return ChampsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
    );
  }

  Champ copyWith({String id, String name, String title}) => Champ(
        id: id ?? this.id,
        name: name ?? this.name,
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('Champ(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(name.hashCode, title.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Champ &&
          other.id == this.id &&
          other.name == this.name &&
          other.title == this.title);
}

class ChampsCompanion extends UpdateCompanion<Champ> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> title;
  const ChampsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.title = const Value.absent(),
  });
  ChampsCompanion.insert({
    @required String id,
    @required String name,
    @required String title,
  })  : id = Value(id),
        name = Value(name),
        title = Value(title);
  ChampsCompanion copyWith(
      {Value<String> id, Value<String> name, Value<String> title}) {
    return ChampsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      title: title ?? this.title,
    );
  }
}

class $ChampsTable extends Champs with TableInfo<$ChampsTable, Champ> {
  final GeneratedDatabase _db;
  final String _alias;
  $ChampsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn('id', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, title];
  @override
  $ChampsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'champs';
  @override
  final String actualTableName = 'champs';
  @override
  VerificationContext validateIntegrity(ChampsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (title.isRequired && isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Champ map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Champ.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ChampsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<String, StringType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    return map;
  }

  @override
  $ChampsTable createAlias(String alias) {
    return $ChampsTable(_db, alias);
  }
}

abstract class _$LeagueDatabase extends GeneratedDatabase {
  _$LeagueDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ChampsTable _champs;
  $ChampsTable get champs => _champs ??= $ChampsTable(this);
  ChampDao _champDao;
  ChampDao get champDao => _champDao ??= ChampDao(this as LeagueDatabase);
  @override
  List<TableInfo> get allTables => [champs];
}
