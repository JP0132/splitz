import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitz/model/CardTracker.dart';
import 'package:splitz/pages/transaction/SplitPage.dart';
import 'package:splitz/utils/constants/colours.dart';
import 'package:splitz/utils/helpers/HelperFunctions.dart';
import 'package:splitz/widgets/CardTrackerWidget.dart';
import 'package:splitz/widgets/CustomCircularContainer.dart';
import 'package:splitz/widgets/CustomCurvedEdges.dart';
import 'package:intl/intl.dart';
import 'package:splitz/widgets/ListCard.dart';

class SplitArguments {
  final int id;
  final String name;

  SplitArguments(this.id, this.name);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Helperfunctions.isDarkMode(context);

    CardTracker newCardData = CardTracker(
      totalAmount: 7454.0,
      createdAt: DateTime.now(),
      listName: "Portugal Holiday",
    );

    String formattedDate = Helperfunctions.getDateFormat(newCardData.createdAt);
    String formattedAmount = "\$${newCardData.totalAmount.toString()}";

    List<CardTracker> cardItemsData = [
      CardTracker(
          totalAmount: 5654.0,
          createdAt: DateTime.now(),
          listName: "Holiday 1"),
      CardTracker(
        totalAmount: 464.0,
        createdAt: DateTime.now(),
        listName: "Shopping Trip 2",
      ),
      CardTracker(
        totalAmount: 464.0,
        createdAt: DateTime.now(),
        listName: "Shopping Trip 2",
      ),
      CardTracker(
        totalAmount: 464.0,
        createdAt: DateTime.now(),
        listName: "Shopping Trip 2",
      ),
      CardTracker(
        totalAmount: 464.0,
        createdAt: DateTime.now(),
        listName: "Shopping Trip 2",
      ),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomCurvedEdges(),
              child: Container(
                padding: const EdgeInsets.all(0),
                color: CustomColours.darkPrimary,
                child: SizedBox(
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -150,
                        right: -250,
                        child: CustomCircularContainer(
                          backgroundColour:
                              CustomColours.darkOnSurface.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: -300,
                        child: CustomCircularContainer(
                          backgroundColour:
                              CustomColours.darkOnSurface.withOpacity(0.1),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 40.0, right: 8, left: 8),
                        child: CardTrackerContainer(
                          totalSpent: formattedAmount,
                          dateCreated: formattedDate,
                          listName: newCardData.listName,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                CustomSearchBar(
                  isDark: isDark,
                  hint: "Search for a list...",
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: cardItemsData.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => InkWell(
                    onTap: () => Get.toNamed(
                      '/split',
                      arguments: SplitArguments(
                        index,
                        cardItemsData[index].listName,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                      child: Listcard(
                        totalSpent:
                            "\$${cardItemsData[index].totalAmount.toString()}",
                        dateCreated: Helperfunctions.getDateFormat(
                            cardItemsData[index].createdAt),
                        listName: cardItemsData[index].listName,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.isDark,
    required this.hint,
  });

  final bool isDark;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        width: Helperfunctions.getScreenWidth(context),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
              color: isDark
                  ? CustomColours.darkOnSurface
                  : CustomColours.lightOnSurface),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 24,
              color: Colors.grey.shade600,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              hint,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
            )
          ],
        ),
      ),
    );
  }
}
