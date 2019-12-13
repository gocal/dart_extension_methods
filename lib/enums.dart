/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

library dart_extension_methods;

extension IterableExtensions<E> on Object {
  String get enumDescribe {
    if (this == null) {
      return null;
    }

    final value = toString();
    final dot = value.indexOf('.');

    if (dot >= 0) {
      return value.substring(dot + 1);
    }

    return null;
  }
}
