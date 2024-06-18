import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitz/model/CardTracker.dart';
import 'package:splitz/model/SplitData.dart';
import 'package:splitz/pages/home/home.dart';
import 'package:splitz/utils/helpers/HelperFunctions.dart';
import 'package:splitz/widgets/CardTrackerWidget.dart';

class SplitPage extends StatefulWidget {
  const SplitPage({super.key});

  @override
  State<SplitPage> createState() => _SplitPageState();
}

class _SplitPageState extends State<SplitPage> {
  final SplitArguments args = Get.arguments;

  final CardTracker newCardData = CardTracker(
    totalAmount: 7454.0,
    createdAt: DateTime.now(),
    listName: "Portugal Holiday",
  );

  late String formattedDate;
  late String formattedAmount;

  @override
  void initState() {
    super.initState();
    formattedDate = Helperfunctions.getDateFormat(newCardData.createdAt);
    formattedAmount = "\$${newCardData.totalAmount.toString()}";
  }

  @override
  Widget build(BuildContext context) {
    final bool isDark = Helperfunctions.isDarkMode(context);
    final List<String> tags = [
      "Shopping",
      "Restaurant",
      "Travel",
      "Food",
      "Drink",
      "Card"
    ];
    final List<String> tags1 = ["Restaurant", "Food", "Cash"];
    final List<String> tags2 = ["Restaurant", "Food", "Cash"];

    final SplitData split1 = SplitData(
        tags: tags1,
        date: DateTime.now(),
        activity: "O Cardo",
        cost: 86.75,
        paid: 90,
        notes: "");
    final SplitData split2 = SplitData(
        tags: tags2,
        date: DateTime.now(),
        activity: "Galeto",
        cost: 88.25,
        paid: 90,
        notes: "Past midnight");

    final List<SplitData> currentSplitz = [split1, split2];

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, right: 8, left: 8),
              child: CardTrackerContainer(
                totalSpent: formattedAmount,
                dateCreated: formattedDate,
                listName: newCardData.listName,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomSearchBar(isDark: isDark, hint: "Search within split"),
            ListView.builder(
              itemCount: currentSplitz.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) => Text("j"),
            )
          ],
        ),
      ),
    );
  }
}
