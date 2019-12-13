/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

import 'package:dart_extension_methods/enums.dart';
import 'package:test/test.dart';

enum TestEnum { one, two, three }

void main() {
  group('Enums extensions test', () {
    setUp(() {});

    test('First Test', () {
      expect(TestEnum.one.enumDescribe, 'one');
    });
  });
}
