import 'package:flutter/material.dart';
import 'package:splitz/pages/authentication/widgets/FormInputWidget.dart';
import 'package:splitz/utils/constants/colours.dart';
import 'package:splitz/utils/constants/images.dart';
import 'package:splitz/utils/constants/values.dart';
import 'package:splitz/utils/helpers/HelperFunctions.dart';
import 'package:splitz/widgets/formWidgets/CustomDropDown.dart';

class Createnewsplit extends StatefulWidget {
  const Createnewsplit({super.key});

  @override
  State<Createnewsplit> createState() => _CreatenewsplitState();
}

class _CreatenewsplitState extends State<Createnewsplit> {
  @override
  Widget build(BuildContext context) {
    final isDark = Helperfunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: isDark
              ? CustomColours.darkBackground
              : CustomColours.lightSurface,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Logo and Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 50,
                    width: 250,
                    image: AssetImage(isDark
                        ? CustomImages.darkThemeLogo
                        : CustomImages.lightThemeLogo),
                  ),
                  const SizedBox(height: 16.0),
                  Text("Create a new list to keep track of...",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 24.0),
                ],
              ),
              // Form
              Form(
                child: Column(
                  children: [
                    FormInputWidget(
                      isDark: isDark,
                      prefixIcon: Icons.list,
                      labelText: "Name of List",
                      horizontal: 15,
                      vertical: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Customdropdown(
                            dropListName: "Select a icon",
                            values: CustomValues.icons,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          flex: 2,
                          child: Customdropdown(
                            dropListName: "Select a Category",
                            values: CustomValues.categories,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Customdropdown(
                      dropListName: "Select a colour",
                      values: CustomValues.colours,
                    ),
                    // FormInputWidget(
                    //   isDark: isDark,
                    //   prefixIcon: Icons.share,
                    //   labelText: "Share?",
                    //   horizontal: 15,
                    //   vertical: 15,
                    // ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isDark
                              ? Colors.white
                              : Colors.black, // Background color
                          foregroundColor: isDark
                              ? Colors.black
                              : Colors.white, // Text color
                          elevation: 4, // Elevation
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              25,
                            ), // Button border radius
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                        ),
                        child: const Text("Create List"),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
