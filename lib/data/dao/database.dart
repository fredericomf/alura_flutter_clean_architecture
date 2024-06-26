import 'dart:async';
import 'package:alura_flutter_clean_architecture/data/dao/entry_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../domain/models/entry.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Entry])
abstract class AppDatabase extends FloorDatabase {
  EntryDao get entryDao;
}