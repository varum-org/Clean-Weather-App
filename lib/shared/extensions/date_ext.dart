extension DateTimeExtension on DateTime {
  List<DateTime> getWeeks() {
    final start = findFirstDateOfTheWeek(this);
    final end = findLastDateOfTheWeek(this);
    return getWeeksForRange(start, end);
  }
}

List<DateTime> getWeeksForRange(DateTime start, DateTime end) {
  var date = start;
  final week = <DateTime>[];
  while (date.difference(end).inDays <= 0) {
    week.add(date);
    date = date.add(const Duration(days: 1));
  }
  return week;
}

DateTime findFirstDateOfTheWeek(DateTime dateTime) {
  return dateTime.subtract(Duration(days: dateTime.weekday - 1));
}

DateTime findLastDateOfTheWeek(DateTime dateTime) {
  return dateTime.add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
}
