class JapRecord {
  final DateTime date;
  final int count;

  JapRecord({
    required this.date,
    required this.count,
  });

  /// Convert object to Map (for storage)
  Map<String, dynamic> toMap() {
    return {
      'date': date.toIso8601String(),
      'count': count,
    };
  }

  /// Create object from Map (from storage)
  factory JapRecord.fromMap(Map<String, dynamic> map) {
    return JapRecord(
      date: DateTime.parse(map['date']),
      count: map['count'],
    );
  }
}
