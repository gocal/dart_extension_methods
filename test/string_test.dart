/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */
import 'package:dart_extension_methods/strings.dart';
import 'package:test/test.dart';

void main() {
  group('String extensions test', () {
    setUp(() {});

    test('isNullOrEmpty extension', () {
      String nullString;
      expect(nullString.isNullOrEmpty, true);

      nullString = '';
      expect(nullString.isNullOrEmpty, true);

      final text = 'hello';
      expect(text.isNotNullOrEmpty, true);
    });

    test('isNullOrEmpty extension', () {
      String nullString;
      expect(nullString.isNotNullOrEmpty, false);

      nullString = '';
      expect(nullString.isNotNullOrEmpty, false);

      final text = 'hello';
      expect(text.isNotNullOrEmpty, true);
    });
  });
}
