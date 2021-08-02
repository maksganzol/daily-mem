class DateMatrix {
  final List<List<DateTime>> matrix;
  final DateTime first;

  DateMatrix({
    required this.first,
    required this.matrix,
  });
}

class DateGenerator {
  static List<DateTime> get dateSet {
    final dateList = [DateTime.fromMillisecondsSinceEpoch(0)];
    final step = Duration(days: 1);
    while (dateList.last.isBefore(DateTime.now().add(step))) {
      dateList.add(dateList.last.add(step));
    }
    return dateList;
  }

  static List<List<DateTime>> get mounthMatrix {
    for (final date in dateSet) {}
    return [];
  }
}
