import 'package:intl/intl.dart';

class CardTracker {
  double totalAmount;
  DateTime createdAt;
  String listName;

  CardTracker({
    required this.totalAmount,
    required this.createdAt,
    required this.listName,
  });
}
