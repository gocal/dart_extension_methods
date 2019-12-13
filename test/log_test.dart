/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

import 'package:dart_extension_methods/log.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {});

    test('First Test', () {
      var levelValue;
      var classTagValue;
      var messageValue;
      var errorValue;
      var stackTraceValue;

      setLogDelegate((level, classTag, message, [error, stackTrace]) {
        levelValue = level.toString();
        classTagValue = classTag.runtimeType.toString();
        messageValue = message;
        errorValue = error;
        stackTraceValue = stackTrace;
      });

      TestObject().testMethod();
      expect(levelValue, 'LogExtensionsLogLevel.info');
      expect(classTagValue, 'TestObject');
      expect(messageValue, 'hello world');
      expect(errorValue, null);
      expect(stackTraceValue, null);
    });
  });
}

class TestObject {
  void testMethod() {
    logi('hello world');
  }
}
