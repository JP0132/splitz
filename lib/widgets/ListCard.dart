import 'package:flutter/material.dart';
import 'package:splitz/utils/constants/colours.dart';
import 'package:splitz/utils/constants/images.dart';

class Listcard extends StatefulWidget {
  final String totalSpent;
  final String dateCreated;
  final String listName;
  const Listcard({
    super.key,
    required this.totalSpent,
    required this.dateCreated,
    required this.listName,
  });

  @override
  State<Listcard> createState() => _ListcardState();
}

class _ListcardState extends State<Listcard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 37, 37, 37),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 111, 111, 111).withOpacity(0.5),
                ),
                child: Image.asset(CustomImages.cardLogo),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.listName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.dateCreated,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.totalSpent,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
