/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

library dart_extension_methods;

extension StringExtensions on String {
  bool get isNullOrEmpty => this == null || isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
