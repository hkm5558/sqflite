@TestOn('vm')
library sqflite_common_ffi.test.setup_impl_test;

import 'dart:io';

import 'package:sqflite_common_ffi/src/windows/setup.dart';
import 'package:test/test.dart';

void main() {
  group('sqflite_ffi_impl', () {
    test('findPackagePath', () {
      // Find our path
      var path = findPackageLibPath(Directory.current.path)!;
      print(path);

      expect(Directory(path).existsSync(), isTrue);
      expect(File(packageGetSqlite3DllPath(path)).existsSync(), isTrue);
    });
    test('findWindowsDllPath', () {
      expect(File(findWindowsDllPath()!).existsSync(), isTrue);
    });
  });
}
