// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Champ extends DataClass implements Insertable<Champ> {
  final String id;
  final String version;
  final String key;
  final String title;
  final String description;
  Champ(
      {@required this.id,
      @required this.version,
      @required this.key,
      @required this.title,
      @required this.description});
  factory Champ.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return Champ(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      version:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}version']),
      key: stringType.mapFromDatabaseResponse(data['${effectivePrefix}key']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
    );
  }
  factory Champ.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Champ(
      id: serializer.fromJson<String>(json['id']),
      version: serializer.fromJson<String>(json['version']),
      key: serializer.fromJson<String>(json['key']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'version': serializer.toJson<String>(version),
      'key': serializer.toJson<String>(key),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
    };
  }

  @override
  ChampsCompanion createCompanion(bool nullToAbsent) {
    return ChampsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      version: version == null && nullToAbsent
          ? const Value.absent()
          : Value(version),
      key: key == null && nullToAbsent ? const Value.absent() : Value(key),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  Champ copyWith(
          {String id,
          String version,
          String key,
          String title,
          String description}) =>
      Champ(
        id: id ?? this.id,
        version: version ?? this.version,
        key: key ?? this.key,
        title: title ?? this.title,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Champ(')
          ..write('id: $id, ')
          ..write('version: $version, ')
          ..write('key: $key, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(version.hashCode,
          $mrjc(key.hashCode, $mrjc(title.hashCode, description.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Champ &&
          other.id == this.id &&
          other.version == this.version &&
          other.key == this.key &&
          other.title == this.title &&
          other.description == this.description);
}

class ChampsCompanion extends UpdateCompanion<Champ> {
  final Value<String> id;
  final Value<String> version;
  final Value<String> key;
  final Value<String> title;
  final Value<String> description;
  const ChampsCompanion({
    this.id = const Value.absent(),
    this.version = const Value.absent(),
    this.key = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  ChampsCompanion.insert({
    @required String id,
    @required String version,
    @required String key,
    @required String title,
    @required String description,
  })  : id = Value(id),
        version = Value(version),
        key = Value(key),
        title = Value(title),
        description = Value(description);
  ChampsCompanion copyWith(
      {Value<String> id,
      Value<String> version,
      Value<String> key,
      Value<String> title,
      Value<String> description}) {
    return ChampsCompanion(
      id: id ?? this.id,
      version: version ?? this.version,
      key: key ?? this.key,
      title: title ?? this.title,
      description: description ?? this.description,
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

  final VerificationMeta _versionMeta = const VerificationMeta('version');
  GeneratedTextColumn _version;
  @override
  GeneratedTextColumn get version => _version ??= _constructVersion();
  GeneratedTextColumn _constructVersion() {
    return GeneratedTextColumn('version', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _keyMeta = const VerificationMeta('key');
  GeneratedTextColumn _key;
  @override
  GeneratedTextColumn get key => _key ??= _constructKey();
  GeneratedTextColumn _constructKey() {
    return GeneratedTextColumn('key', $tableName, false,
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

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns => [id, version, key, title, description];
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
    if (d.version.present) {
      context.handle(_versionMeta,
          version.isAcceptableValue(d.version.value, _versionMeta));
    } else if (version.isRequired && isInserting) {
      context.missing(_versionMeta);
    }
    if (d.key.present) {
      context.handle(_keyMeta, key.isAcceptableValue(d.key.value, _keyMeta));
    } else if (key.isRequired && isInserting) {
      context.missing(_keyMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (title.isRequired && isInserting) {
      context.missing(_titleMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (description.isRequired && isInserting) {
      context.missing(_descriptionMeta);
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
    if (d.version.present) {
      map['version'] = Variable<String, StringType>(d.version.value);
    }
    if (d.key.present) {
      map['key'] = Variable<String, StringType>(d.key.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
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
