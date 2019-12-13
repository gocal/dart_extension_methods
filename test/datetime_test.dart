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

    test('DateTime', () {
      final d1 = DateTime.now().add(Duration(minutes: 1));
      expect(d1.isFuture, true);
      expect(d1.isPast, false);

      final d2 = DateTime.now().subtract(Duration(minutes: 1));
      expect(d2.isFuture, false);
      expect(d2.isPast, true);

      expect(DateTime.now().subtract(Duration(days: 1)).isYesterday, true);

      expect(DateTime.now().subtract(Duration(days: 1)).isThisYear, true);

      expect(DateTime.now().add(Duration(days: 1)).isThisWeek, true);
    });
  });
}
