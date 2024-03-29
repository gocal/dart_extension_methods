/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

import 'package:dart_extension_methods/collections.dart';
import 'package:test/test.dart';

void main() {
  group('Collections extensions test', () {
    setUp(() {});

    test('First Test', () {
      expect([1, 2, 3].isNotNullOrEmpty, true);
      expect([1, 2, 3].mapToList((value) => value > 1) is List, true);
    });
  });
}
