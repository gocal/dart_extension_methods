/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

library dart_extension_methods;

extension LogExtensions on dynamic {
  void logi(String text, [dynamic error, StackTrace stackTrace]) {
    logMessage(LogExtensionsLogLevel.info, this, text, error, stackTrace);
  }

  void logd(String text, [dynamic error, StackTrace stackTrace]) {
    logMessage(LogExtensionsLogLevel.error, this, text, error, stackTrace);
  }

  void logv(String text, [dynamic error, StackTrace stackTrace]) {
    logMessage(LogExtensionsLogLevel.error, this, text, error, stackTrace);
  }

  void loge(String text, [dynamic error, StackTrace stackTrace]) {
    logMessage(LogExtensionsLogLevel.error, this, text, error, stackTrace);
  }
}

enum LogExtensionsLogLevel {
  verbose,
  debug,
  info,
  warning,
  error,
  wtf,
  nothing,
}

void logMessage(LogExtensionsLogLevel level, Object classTag, String message,
    [dynamic error, StackTrace stackTrace]) {
  if (logDelegate != null) {
    logDelegate(level, classTag, message, error, stackTrace);
  }
}

typedef LogDelegate = void Function(
    LogExtensionsLogLevel level, Object classTag, String message,
    [dynamic error, StackTrace stackTrace]);

LogDelegate logDelegate;

void setLogDelegate(LogDelegate delegate) {
  logDelegate = delegate;
}
