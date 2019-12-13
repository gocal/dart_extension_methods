/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

import 'package:dart_extension_methods/datetime.dart';
import 'package:test/test.dart';

void main() {
  group('DateTime extensions test', () {
    setUp(() {});

    test('First Test', () {
      DateTime.now().isFuture;
    });
  });
}
