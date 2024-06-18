class SplitData {
  String activity;
  double cost;
  double paid;
  DateTime date;
  List<dynamic> tags;
  String notes;

  SplitData({
    required this.tags,
    required this.date,
    required this.activity,
    required this.cost,
    required this.paid,
    required this.notes,
  });
}
