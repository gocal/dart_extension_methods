/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

library dart_extension_methods;

extension IterableExtensions<E> on Iterable<E> {
  bool get isNullOrEmpty => this == null || isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;

  List<T> mapToList<T>(T Function(E e) f) {
    return map<T>(f).toList();
  }
}

extension ListExtensions<E> on List<E> {
  bool get isNullOrEmpty => this == null || isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;

  void swap(int index1, int index2) {}
}
