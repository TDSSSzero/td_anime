import 'package:drift/drift.dart';

class AnimeLook extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get time => text()();
  TextColumn get description => text()();
  IntColumn get episodes => integer()();
  RealColumn get score => real()();
  BoolColumn get isFinished => boolean()();
  IntColumn get categoryId => integer()();
  IntColumn get onlineUrlId => integer()();
  IntColumn get downloadUrlId => integer()();
  TextColumn get createTime => text()();
  TextColumn get updateTime => text().nullable()();

  @override
  Set<Column> get primaryKey =>{id};
}
class AnimeCategory extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get animeId => integer()();
  IntColumn get category => integer()();

  @override
  Set<Column> get primaryKey =>{id};
}

class AnimeOnlineUrl extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get animeId => integer()();
  TextColumn get onlineUrl => text()();

  @override
  Set<Column> get primaryKey =>{id};
}

class AnimeDownloadUrl extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get animeId => integer()();
  TextColumn get downloadUrl => text()();

  @override
  Set<Column> get primaryKey =>{id};
}