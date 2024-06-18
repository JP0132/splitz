import 'package:flutter/material.dart';
import 'package:splitz/utils/constants/colours.dart';
import 'package:splitz/utils/constants/images.dart';

class CardTrackerContainer extends StatefulWidget {
  final String totalSpent;
  final String dateCreated;
  final String listName;
  const CardTrackerContainer(
      {super.key,
      required this.totalSpent,
      required this.dateCreated,
      required this.listName});

  @override
  State<CardTrackerContainer> createState() => _CardTrackerContainerState();
}

class _CardTrackerContainerState extends State<CardTrackerContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          width: 370,
          height: 190,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Color(0x4B1A1F24),
                offset: Offset(
                  0.0,
                  2,
                ),
              )
            ],
            gradient: CustomColours.purpleGradient,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  CustomImages.cardLogo,
                  width: 44,
                  height: 44,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Balance',
                ),
                Text(
                  widget.totalSpent,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.listName,
                      ),
                      Text(
                        widget.dateCreated,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
