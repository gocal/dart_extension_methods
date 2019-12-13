/*
 * Copyright (c) 2019, Marek Gocał
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

library dart_extension_methods;

extension DateTimeExtensions on DateTime {
  bool get isYesterday => DateUtils().isYesterday(this);

  bool get isToday => DateUtils().isToday(this);

  bool get isThisWeek {
    final todayDate = DateUtils().today();

    final firstDayOfTheWeek =
        todayDate.subtract(Duration(days: todayDate.weekday));

    final lastDayOfTheWeek =
        todayDate.add(Duration(days: 8 - todayDate.weekday, milliseconds: -1));

    return isAfter(firstDayOfTheWeek) && isBefore(lastDayOfTheWeek);
  }

  bool get isThisYear {
    final todayDate = DateUtils().today();
    return year == todayDate.year;
  }

  bool get isFuture {
    return difference(DateUtils().now()).inMilliseconds > 0;
  }

  bool isSameDay(DateTime date) => DateUtils().isSameDay(this, date);

  int daysDifference(DateTime date) {
    return noon.difference(date.noon).inDays;
  }

  DateTime get noon {
    return DateTime(year, month, day);
  }

  int get minutesAgo {
    return DateUtils().now().difference(this).inMinutes;
  }
}

class DateUtils {
  static final DateUtils _singleton = DateUtils._internal();

  factory DateUtils() {
    return _singleton;
  }

  DateUtils._internal();

  DateTime now() {
    return DateTime.now();
  }

  DateTime today() {
    final nowDate = now();
    return DateTime(nowDate.year, nowDate.month, nowDate.day);
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  bool isYesterday(DateTime date) {
    return isSameDay(yesterday(), date);
  }

  bool isToday(DateTime date) {
    return isSameDay(today(), date);
  }

  bool isFuture(DateTime date) {
    return date.difference(now()).inMilliseconds > 0;
  }

  DateTime yesterday() {
    return today().subtract(Duration(days: 1));
  }

  bool isThisWeek(DateTime date) {
    final todayDate = today();

    final firstDayOfTheWeek =
        todayDate.subtract(Duration(days: todayDate.weekday));

    final lastDayOfTheWeek =
        todayDate.add(Duration(days: 8 - todayDate.weekday, milliseconds: -1));

    return date.isAfter(firstDayOfTheWeek) && date.isBefore(lastDayOfTheWeek);
  }

  bool isThisYear(DateTime date) {
    final todayDate = today();
    return date.year == todayDate.year;
  }

  int daysDifference(DateTime d1, DateTime d2) {
    return toNoon(d1).difference(toNoon(d2)).inDays;
  }

  DateTime toNoon(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }
}
