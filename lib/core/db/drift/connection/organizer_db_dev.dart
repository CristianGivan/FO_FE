import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

LazyDatabase connect() {
  return LazyDatabase(() async {
    String projectDir = Directory.current.path;
    final dbFolderPath = p.join(projectDir, 'lib', 'core', 'db', 'test_db');
    await Directory(dbFolderPath).create(recursive: true);
    final file = File(p.join(dbFolderPath, 'OrganizerDBDrift.sqlite'));
    return NativeDatabase.createInBackground(
      file,
      logStatements: true, // Enable SQL logging);
    );
  });
}
