// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_db.dart';

// ignore_for_file: type=lint
class $AnimeLookTable extends AnimeLook
    with TableInfo<$AnimeLookTable, AnimeLookData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnimeLookTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
      'time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _episodesMeta =
      const VerificationMeta('episodes');
  @override
  late final GeneratedColumn<int> episodes = GeneratedColumn<int>(
      'episodes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<double> score = GeneratedColumn<double>(
      'score', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _isFinishedMeta =
      const VerificationMeta('isFinished');
  @override
  late final GeneratedColumn<bool> isFinished =
      GeneratedColumn<bool>('is_finished', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_finished" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _onlineUrlIdMeta =
      const VerificationMeta('onlineUrlId');
  @override
  late final GeneratedColumn<int> onlineUrlId = GeneratedColumn<int>(
      'online_url_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _downloadUrlIdMeta =
      const VerificationMeta('downloadUrlId');
  @override
  late final GeneratedColumn<int> downloadUrlId = GeneratedColumn<int>(
      'download_url_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<String> createTime = GeneratedColumn<String>(
      'create_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updateTimeMeta =
      const VerificationMeta('updateTime');
  @override
  late final GeneratedColumn<String> updateTime = GeneratedColumn<String>(
      'update_time', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        time,
        description,
        episodes,
        score,
        isFinished,
        categoryId,
        onlineUrlId,
        downloadUrlId,
        createTime,
        updateTime
      ];
  @override
  String get aliasedName => _alias ?? 'anime_look';
  @override
  String get actualTableName => 'anime_look';
  @override
  VerificationContext validateIntegrity(Insertable<AnimeLookData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('episodes')) {
      context.handle(_episodesMeta,
          episodes.isAcceptableOrUnknown(data['episodes']!, _episodesMeta));
    } else if (isInserting) {
      context.missing(_episodesMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
          _scoreMeta, score.isAcceptableOrUnknown(data['score']!, _scoreMeta));
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('is_finished')) {
      context.handle(
          _isFinishedMeta,
          isFinished.isAcceptableOrUnknown(
              data['is_finished']!, _isFinishedMeta));
    } else if (isInserting) {
      context.missing(_isFinishedMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('online_url_id')) {
      context.handle(
          _onlineUrlIdMeta,
          onlineUrlId.isAcceptableOrUnknown(
              data['online_url_id']!, _onlineUrlIdMeta));
    } else if (isInserting) {
      context.missing(_onlineUrlIdMeta);
    }
    if (data.containsKey('download_url_id')) {
      context.handle(
          _downloadUrlIdMeta,
          downloadUrlId.isAcceptableOrUnknown(
              data['download_url_id']!, _downloadUrlIdMeta));
    } else if (isInserting) {
      context.missing(_downloadUrlIdMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('update_time')) {
      context.handle(
          _updateTimeMeta,
          updateTime.isAcceptableOrUnknown(
              data['update_time']!, _updateTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnimeLookData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimeLookData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}time'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      episodes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}episodes'])!,
      score: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}score'])!,
      isFinished: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_finished'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      onlineUrlId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}online_url_id'])!,
      downloadUrlId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}download_url_id'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}create_time'])!,
      updateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}update_time']),
    );
  }

  @override
  $AnimeLookTable createAlias(String alias) {
    return $AnimeLookTable(attachedDatabase, alias);
  }
}

class AnimeLookData extends DataClass implements Insertable<AnimeLookData> {
  final int id;
  final String name;
  final String time;
  final String description;
  final int episodes;
  final double score;
  final bool isFinished;
  final int categoryId;
  final int onlineUrlId;
  final int downloadUrlId;
  final String createTime;
  final String? updateTime;
  const AnimeLookData(
      {required this.id,
      required this.name,
      required this.time,
      required this.description,
      required this.episodes,
      required this.score,
      required this.isFinished,
      required this.categoryId,
      required this.onlineUrlId,
      required this.downloadUrlId,
      required this.createTime,
      this.updateTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['time'] = Variable<String>(time);
    map['description'] = Variable<String>(description);
    map['episodes'] = Variable<int>(episodes);
    map['score'] = Variable<double>(score);
    map['is_finished'] = Variable<bool>(isFinished);
    map['category_id'] = Variable<int>(categoryId);
    map['online_url_id'] = Variable<int>(onlineUrlId);
    map['download_url_id'] = Variable<int>(downloadUrlId);
    map['create_time'] = Variable<String>(createTime);
    if (!nullToAbsent || updateTime != null) {
      map['update_time'] = Variable<String>(updateTime);
    }
    return map;
  }

  AnimeLookCompanion toCompanion(bool nullToAbsent) {
    return AnimeLookCompanion(
      id: Value(id),
      name: Value(name),
      time: Value(time),
      description: Value(description),
      episodes: Value(episodes),
      score: Value(score),
      isFinished: Value(isFinished),
      categoryId: Value(categoryId),
      onlineUrlId: Value(onlineUrlId),
      downloadUrlId: Value(downloadUrlId),
      createTime: Value(createTime),
      updateTime: updateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(updateTime),
    );
  }

  factory AnimeLookData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimeLookData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      time: serializer.fromJson<String>(json['time']),
      description: serializer.fromJson<String>(json['description']),
      episodes: serializer.fromJson<int>(json['episodes']),
      score: serializer.fromJson<double>(json['score']),
      isFinished: serializer.fromJson<bool>(json['isFinished']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      onlineUrlId: serializer.fromJson<int>(json['onlineUrlId']),
      downloadUrlId: serializer.fromJson<int>(json['downloadUrlId']),
      createTime: serializer.fromJson<String>(json['createTime']),
      updateTime: serializer.fromJson<String?>(json['updateTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'time': serializer.toJson<String>(time),
      'description': serializer.toJson<String>(description),
      'episodes': serializer.toJson<int>(episodes),
      'score': serializer.toJson<double>(score),
      'isFinished': serializer.toJson<bool>(isFinished),
      'categoryId': serializer.toJson<int>(categoryId),
      'onlineUrlId': serializer.toJson<int>(onlineUrlId),
      'downloadUrlId': serializer.toJson<int>(downloadUrlId),
      'createTime': serializer.toJson<String>(createTime),
      'updateTime': serializer.toJson<String?>(updateTime),
    };
  }

  AnimeLookData copyWith(
          {int? id,
          String? name,
          String? time,
          String? description,
          int? episodes,
          double? score,
          bool? isFinished,
          int? categoryId,
          int? onlineUrlId,
          int? downloadUrlId,
          String? createTime,
          Value<String?> updateTime = const Value.absent()}) =>
      AnimeLookData(
        id: id ?? this.id,
        name: name ?? this.name,
        time: time ?? this.time,
        description: description ?? this.description,
        episodes: episodes ?? this.episodes,
        score: score ?? this.score,
        isFinished: isFinished ?? this.isFinished,
        categoryId: categoryId ?? this.categoryId,
        onlineUrlId: onlineUrlId ?? this.onlineUrlId,
        downloadUrlId: downloadUrlId ?? this.downloadUrlId,
        createTime: createTime ?? this.createTime,
        updateTime: updateTime.present ? updateTime.value : this.updateTime,
      );
  @override
  String toString() {
    return (StringBuffer('AnimeLookData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('time: $time, ')
          ..write('description: $description, ')
          ..write('episodes: $episodes, ')
          ..write('score: $score, ')
          ..write('isFinished: $isFinished, ')
          ..write('categoryId: $categoryId, ')
          ..write('onlineUrlId: $onlineUrlId, ')
          ..write('downloadUrlId: $downloadUrlId, ')
          ..write('createTime: $createTime, ')
          ..write('updateTime: $updateTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      time,
      description,
      episodes,
      score,
      isFinished,
      categoryId,
      onlineUrlId,
      downloadUrlId,
      createTime,
      updateTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimeLookData &&
          other.id == this.id &&
          other.name == this.name &&
          other.time == this.time &&
          other.description == this.description &&
          other.episodes == this.episodes &&
          other.score == this.score &&
          other.isFinished == this.isFinished &&
          other.categoryId == this.categoryId &&
          other.onlineUrlId == this.onlineUrlId &&
          other.downloadUrlId == this.downloadUrlId &&
          other.createTime == this.createTime &&
          other.updateTime == this.updateTime);
}

class AnimeLookCompanion extends UpdateCompanion<AnimeLookData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> time;
  final Value<String> description;
  final Value<int> episodes;
  final Value<double> score;
  final Value<bool> isFinished;
  final Value<int> categoryId;
  final Value<int> onlineUrlId;
  final Value<int> downloadUrlId;
  final Value<String> createTime;
  final Value<String?> updateTime;
  const AnimeLookCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.time = const Value.absent(),
    this.description = const Value.absent(),
    this.episodes = const Value.absent(),
    this.score = const Value.absent(),
    this.isFinished = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.onlineUrlId = const Value.absent(),
    this.downloadUrlId = const Value.absent(),
    this.createTime = const Value.absent(),
    this.updateTime = const Value.absent(),
  });
  AnimeLookCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String time,
    required String description,
    required int episodes,
    required double score,
    required bool isFinished,
    required int categoryId,
    required int onlineUrlId,
    required int downloadUrlId,
    required String createTime,
    this.updateTime = const Value.absent(),
  })  : name = Value(name),
        time = Value(time),
        description = Value(description),
        episodes = Value(episodes),
        score = Value(score),
        isFinished = Value(isFinished),
        categoryId = Value(categoryId),
        onlineUrlId = Value(onlineUrlId),
        downloadUrlId = Value(downloadUrlId),
        createTime = Value(createTime);
  static Insertable<AnimeLookData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? time,
    Expression<String>? description,
    Expression<int>? episodes,
    Expression<double>? score,
    Expression<bool>? isFinished,
    Expression<int>? categoryId,
    Expression<int>? onlineUrlId,
    Expression<int>? downloadUrlId,
    Expression<String>? createTime,
    Expression<String>? updateTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (time != null) 'time': time,
      if (description != null) 'description': description,
      if (episodes != null) 'episodes': episodes,
      if (score != null) 'score': score,
      if (isFinished != null) 'is_finished': isFinished,
      if (categoryId != null) 'category_id': categoryId,
      if (onlineUrlId != null) 'online_url_id': onlineUrlId,
      if (downloadUrlId != null) 'download_url_id': downloadUrlId,
      if (createTime != null) 'create_time': createTime,
      if (updateTime != null) 'update_time': updateTime,
    });
  }

  AnimeLookCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? time,
      Value<String>? description,
      Value<int>? episodes,
      Value<double>? score,
      Value<bool>? isFinished,
      Value<int>? categoryId,
      Value<int>? onlineUrlId,
      Value<int>? downloadUrlId,
      Value<String>? createTime,
      Value<String?>? updateTime}) {
    return AnimeLookCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      time: time ?? this.time,
      description: description ?? this.description,
      episodes: episodes ?? this.episodes,
      score: score ?? this.score,
      isFinished: isFinished ?? this.isFinished,
      categoryId: categoryId ?? this.categoryId,
      onlineUrlId: onlineUrlId ?? this.onlineUrlId,
      downloadUrlId: downloadUrlId ?? this.downloadUrlId,
      createTime: createTime ?? this.createTime,
      updateTime: updateTime ?? this.updateTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (episodes.present) {
      map['episodes'] = Variable<int>(episodes.value);
    }
    if (score.present) {
      map['score'] = Variable<double>(score.value);
    }
    if (isFinished.present) {
      map['is_finished'] = Variable<bool>(isFinished.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (onlineUrlId.present) {
      map['online_url_id'] = Variable<int>(onlineUrlId.value);
    }
    if (downloadUrlId.present) {
      map['download_url_id'] = Variable<int>(downloadUrlId.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<String>(createTime.value);
    }
    if (updateTime.present) {
      map['update_time'] = Variable<String>(updateTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimeLookCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('time: $time, ')
          ..write('description: $description, ')
          ..write('episodes: $episodes, ')
          ..write('score: $score, ')
          ..write('isFinished: $isFinished, ')
          ..write('categoryId: $categoryId, ')
          ..write('onlineUrlId: $onlineUrlId, ')
          ..write('downloadUrlId: $downloadUrlId, ')
          ..write('createTime: $createTime, ')
          ..write('updateTime: $updateTime')
          ..write(')'))
        .toString();
  }
}

class $AnimeCategoryTable extends AnimeCategory
    with TableInfo<$AnimeCategoryTable, AnimeCategoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnimeCategoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _animeIdMeta =
      const VerificationMeta('animeId');
  @override
  late final GeneratedColumn<int> animeId = GeneratedColumn<int>(
      'anime_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<int> category = GeneratedColumn<int>(
      'category', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, animeId, category];
  @override
  String get aliasedName => _alias ?? 'anime_category';
  @override
  String get actualTableName => 'anime_category';
  @override
  VerificationContext validateIntegrity(Insertable<AnimeCategoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('anime_id')) {
      context.handle(_animeIdMeta,
          animeId.isAcceptableOrUnknown(data['anime_id']!, _animeIdMeta));
    } else if (isInserting) {
      context.missing(_animeIdMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnimeCategoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimeCategoryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      animeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}anime_id'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category'])!,
    );
  }

  @override
  $AnimeCategoryTable createAlias(String alias) {
    return $AnimeCategoryTable(attachedDatabase, alias);
  }
}

class AnimeCategoryData extends DataClass
    implements Insertable<AnimeCategoryData> {
  final int id;
  final int animeId;
  final int category;
  const AnimeCategoryData(
      {required this.id, required this.animeId, required this.category});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['anime_id'] = Variable<int>(animeId);
    map['category'] = Variable<int>(category);
    return map;
  }

  AnimeCategoryCompanion toCompanion(bool nullToAbsent) {
    return AnimeCategoryCompanion(
      id: Value(id),
      animeId: Value(animeId),
      category: Value(category),
    );
  }

  factory AnimeCategoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimeCategoryData(
      id: serializer.fromJson<int>(json['id']),
      animeId: serializer.fromJson<int>(json['animeId']),
      category: serializer.fromJson<int>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'animeId': serializer.toJson<int>(animeId),
      'category': serializer.toJson<int>(category),
    };
  }

  AnimeCategoryData copyWith({int? id, int? animeId, int? category}) =>
      AnimeCategoryData(
        id: id ?? this.id,
        animeId: animeId ?? this.animeId,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('AnimeCategoryData(')
          ..write('id: $id, ')
          ..write('animeId: $animeId, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, animeId, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimeCategoryData &&
          other.id == this.id &&
          other.animeId == this.animeId &&
          other.category == this.category);
}

class AnimeCategoryCompanion extends UpdateCompanion<AnimeCategoryData> {
  final Value<int> id;
  final Value<int> animeId;
  final Value<int> category;
  const AnimeCategoryCompanion({
    this.id = const Value.absent(),
    this.animeId = const Value.absent(),
    this.category = const Value.absent(),
  });
  AnimeCategoryCompanion.insert({
    this.id = const Value.absent(),
    required int animeId,
    required int category,
  })  : animeId = Value(animeId),
        category = Value(category);
  static Insertable<AnimeCategoryData> custom({
    Expression<int>? id,
    Expression<int>? animeId,
    Expression<int>? category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (animeId != null) 'anime_id': animeId,
      if (category != null) 'category': category,
    });
  }

  AnimeCategoryCompanion copyWith(
      {Value<int>? id, Value<int>? animeId, Value<int>? category}) {
    return AnimeCategoryCompanion(
      id: id ?? this.id,
      animeId: animeId ?? this.animeId,
      category: category ?? this.category,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (animeId.present) {
      map['anime_id'] = Variable<int>(animeId.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimeCategoryCompanion(')
          ..write('id: $id, ')
          ..write('animeId: $animeId, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }
}

class $AnimeOnlineUrlTable extends AnimeOnlineUrl
    with TableInfo<$AnimeOnlineUrlTable, AnimeOnlineUrlData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnimeOnlineUrlTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _animeIdMeta =
      const VerificationMeta('animeId');
  @override
  late final GeneratedColumn<int> animeId = GeneratedColumn<int>(
      'anime_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _onlineUrlMeta =
      const VerificationMeta('onlineUrl');
  @override
  late final GeneratedColumn<String> onlineUrl = GeneratedColumn<String>(
      'online_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, animeId, onlineUrl];
  @override
  String get aliasedName => _alias ?? 'anime_online_url';
  @override
  String get actualTableName => 'anime_online_url';
  @override
  VerificationContext validateIntegrity(Insertable<AnimeOnlineUrlData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('anime_id')) {
      context.handle(_animeIdMeta,
          animeId.isAcceptableOrUnknown(data['anime_id']!, _animeIdMeta));
    } else if (isInserting) {
      context.missing(_animeIdMeta);
    }
    if (data.containsKey('online_url')) {
      context.handle(_onlineUrlMeta,
          onlineUrl.isAcceptableOrUnknown(data['online_url']!, _onlineUrlMeta));
    } else if (isInserting) {
      context.missing(_onlineUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnimeOnlineUrlData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimeOnlineUrlData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      animeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}anime_id'])!,
      onlineUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}online_url'])!,
    );
  }

  @override
  $AnimeOnlineUrlTable createAlias(String alias) {
    return $AnimeOnlineUrlTable(attachedDatabase, alias);
  }
}

class AnimeOnlineUrlData extends DataClass
    implements Insertable<AnimeOnlineUrlData> {
  final int id;
  final int animeId;
  final String onlineUrl;
  const AnimeOnlineUrlData(
      {required this.id, required this.animeId, required this.onlineUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['anime_id'] = Variable<int>(animeId);
    map['online_url'] = Variable<String>(onlineUrl);
    return map;
  }

  AnimeOnlineUrlCompanion toCompanion(bool nullToAbsent) {
    return AnimeOnlineUrlCompanion(
      id: Value(id),
      animeId: Value(animeId),
      onlineUrl: Value(onlineUrl),
    );
  }

  factory AnimeOnlineUrlData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimeOnlineUrlData(
      id: serializer.fromJson<int>(json['id']),
      animeId: serializer.fromJson<int>(json['animeId']),
      onlineUrl: serializer.fromJson<String>(json['onlineUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'animeId': serializer.toJson<int>(animeId),
      'onlineUrl': serializer.toJson<String>(onlineUrl),
    };
  }

  AnimeOnlineUrlData copyWith({int? id, int? animeId, String? onlineUrl}) =>
      AnimeOnlineUrlData(
        id: id ?? this.id,
        animeId: animeId ?? this.animeId,
        onlineUrl: onlineUrl ?? this.onlineUrl,
      );
  @override
  String toString() {
    return (StringBuffer('AnimeOnlineUrlData(')
          ..write('id: $id, ')
          ..write('animeId: $animeId, ')
          ..write('onlineUrl: $onlineUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, animeId, onlineUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimeOnlineUrlData &&
          other.id == this.id &&
          other.animeId == this.animeId &&
          other.onlineUrl == this.onlineUrl);
}

class AnimeOnlineUrlCompanion extends UpdateCompanion<AnimeOnlineUrlData> {
  final Value<int> id;
  final Value<int> animeId;
  final Value<String> onlineUrl;
  const AnimeOnlineUrlCompanion({
    this.id = const Value.absent(),
    this.animeId = const Value.absent(),
    this.onlineUrl = const Value.absent(),
  });
  AnimeOnlineUrlCompanion.insert({
    this.id = const Value.absent(),
    required int animeId,
    required String onlineUrl,
  })  : animeId = Value(animeId),
        onlineUrl = Value(onlineUrl);
  static Insertable<AnimeOnlineUrlData> custom({
    Expression<int>? id,
    Expression<int>? animeId,
    Expression<String>? onlineUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (animeId != null) 'anime_id': animeId,
      if (onlineUrl != null) 'online_url': onlineUrl,
    });
  }

  AnimeOnlineUrlCompanion copyWith(
      {Value<int>? id, Value<int>? animeId, Value<String>? onlineUrl}) {
    return AnimeOnlineUrlCompanion(
      id: id ?? this.id,
      animeId: animeId ?? this.animeId,
      onlineUrl: onlineUrl ?? this.onlineUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (animeId.present) {
      map['anime_id'] = Variable<int>(animeId.value);
    }
    if (onlineUrl.present) {
      map['online_url'] = Variable<String>(onlineUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimeOnlineUrlCompanion(')
          ..write('id: $id, ')
          ..write('animeId: $animeId, ')
          ..write('onlineUrl: $onlineUrl')
          ..write(')'))
        .toString();
  }
}

class $AnimeDownloadUrlTable extends AnimeDownloadUrl
    with TableInfo<$AnimeDownloadUrlTable, AnimeDownloadUrlData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnimeDownloadUrlTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _animeIdMeta =
      const VerificationMeta('animeId');
  @override
  late final GeneratedColumn<int> animeId = GeneratedColumn<int>(
      'anime_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _downloadUrlMeta =
      const VerificationMeta('downloadUrl');
  @override
  late final GeneratedColumn<String> downloadUrl = GeneratedColumn<String>(
      'download_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, animeId, downloadUrl];
  @override
  String get aliasedName => _alias ?? 'anime_download_url';
  @override
  String get actualTableName => 'anime_download_url';
  @override
  VerificationContext validateIntegrity(
      Insertable<AnimeDownloadUrlData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('anime_id')) {
      context.handle(_animeIdMeta,
          animeId.isAcceptableOrUnknown(data['anime_id']!, _animeIdMeta));
    } else if (isInserting) {
      context.missing(_animeIdMeta);
    }
    if (data.containsKey('download_url')) {
      context.handle(
          _downloadUrlMeta,
          downloadUrl.isAcceptableOrUnknown(
              data['download_url']!, _downloadUrlMeta));
    } else if (isInserting) {
      context.missing(_downloadUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnimeDownloadUrlData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimeDownloadUrlData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      animeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}anime_id'])!,
      downloadUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}download_url'])!,
    );
  }

  @override
  $AnimeDownloadUrlTable createAlias(String alias) {
    return $AnimeDownloadUrlTable(attachedDatabase, alias);
  }
}

class AnimeDownloadUrlData extends DataClass
    implements Insertable<AnimeDownloadUrlData> {
  final int id;
  final int animeId;
  final String downloadUrl;
  const AnimeDownloadUrlData(
      {required this.id, required this.animeId, required this.downloadUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['anime_id'] = Variable<int>(animeId);
    map['download_url'] = Variable<String>(downloadUrl);
    return map;
  }

  AnimeDownloadUrlCompanion toCompanion(bool nullToAbsent) {
    return AnimeDownloadUrlCompanion(
      id: Value(id),
      animeId: Value(animeId),
      downloadUrl: Value(downloadUrl),
    );
  }

  factory AnimeDownloadUrlData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimeDownloadUrlData(
      id: serializer.fromJson<int>(json['id']),
      animeId: serializer.fromJson<int>(json['animeId']),
      downloadUrl: serializer.fromJson<String>(json['downloadUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'animeId': serializer.toJson<int>(animeId),
      'downloadUrl': serializer.toJson<String>(downloadUrl),
    };
  }

  AnimeDownloadUrlData copyWith({int? id, int? animeId, String? downloadUrl}) =>
      AnimeDownloadUrlData(
        id: id ?? this.id,
        animeId: animeId ?? this.animeId,
        downloadUrl: downloadUrl ?? this.downloadUrl,
      );
  @override
  String toString() {
    return (StringBuffer('AnimeDownloadUrlData(')
          ..write('id: $id, ')
          ..write('animeId: $animeId, ')
          ..write('downloadUrl: $downloadUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, animeId, downloadUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimeDownloadUrlData &&
          other.id == this.id &&
          other.animeId == this.animeId &&
          other.downloadUrl == this.downloadUrl);
}

class AnimeDownloadUrlCompanion extends UpdateCompanion<AnimeDownloadUrlData> {
  final Value<int> id;
  final Value<int> animeId;
  final Value<String> downloadUrl;
  const AnimeDownloadUrlCompanion({
    this.id = const Value.absent(),
    this.animeId = const Value.absent(),
    this.downloadUrl = const Value.absent(),
  });
  AnimeDownloadUrlCompanion.insert({
    this.id = const Value.absent(),
    required int animeId,
    required String downloadUrl,
  })  : animeId = Value(animeId),
        downloadUrl = Value(downloadUrl);
  static Insertable<AnimeDownloadUrlData> custom({
    Expression<int>? id,
    Expression<int>? animeId,
    Expression<String>? downloadUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (animeId != null) 'anime_id': animeId,
      if (downloadUrl != null) 'download_url': downloadUrl,
    });
  }

  AnimeDownloadUrlCompanion copyWith(
      {Value<int>? id, Value<int>? animeId, Value<String>? downloadUrl}) {
    return AnimeDownloadUrlCompanion(
      id: id ?? this.id,
      animeId: animeId ?? this.animeId,
      downloadUrl: downloadUrl ?? this.downloadUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (animeId.present) {
      map['anime_id'] = Variable<int>(animeId.value);
    }
    if (downloadUrl.present) {
      map['download_url'] = Variable<String>(downloadUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimeDownloadUrlCompanion(')
          ..write('id: $id, ')
          ..write('animeId: $animeId, ')
          ..write('downloadUrl: $downloadUrl')
          ..write(')'))
        .toString();
  }
}

abstract class _$AnimeDatabase extends GeneratedDatabase {
  _$AnimeDatabase(QueryExecutor e) : super(e);
  late final $AnimeLookTable animeLook = $AnimeLookTable(this);
  late final $AnimeCategoryTable animeCategory = $AnimeCategoryTable(this);
  late final $AnimeOnlineUrlTable animeOnlineUrl = $AnimeOnlineUrlTable(this);
  late final $AnimeDownloadUrlTable animeDownloadUrl =
      $AnimeDownloadUrlTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [animeLook, animeCategory, animeOnlineUrl, animeDownloadUrl];
}
