
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:td_anime/db/anime_tables.dart';

part 'anime_db.g.dart';

@DriftDatabase(tables: [AnimeLook,AnimeCategory,AnimeOnlineUrl,AnimeDownloadUrl])
class AnimeDatabase extends _$AnimeDatabase{
  AnimeDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => throw UnimplementedError();

}
LazyDatabase _openConnection() {
  // final MMKVService mmkvService = getx.Get.find<MMKVService>();
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    // bool isFirst = mmkvService.mmkv.decodeBool(MKey.isFirstInstallApp,defaultValue: true);
    Directory dir = await getApplicationDocumentsDirectory();
    final file = File(join(dir.path, 'anime_db.sqlite'));
    // mmkvService.mmkv.encodeBool(MKey.isFirstInstallApp, false);
    return NativeDatabase.createInBackground(file);
  });
}