/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

import 'package:dart_extension_methods/flutter/material.dart';
import 'package:test/test.dart';

void main() {
  group('Flutter Material extensions test', () {
    setUp(() {});

    test('First Test', () {
      expect(1.q, 8);
      expect(1.column, 8);
      expect(1.gutter, 8);
      expect(1.margin, 8);
    });
  });
}
