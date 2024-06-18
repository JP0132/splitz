import 'package:flutter/material.dart';
import 'package:splitz/pages/authentication/widgets/FormDividerWidget.dart';
import 'package:splitz/pages/authentication/widgets/FormInputWidget.dart';
import 'package:splitz/utils/constants/colours.dart';
import 'package:splitz/utils/constants/images.dart';
import 'package:splitz/utils/helpers/HelperFunctions.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Helperfunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            isDark ? CustomColours.darkBackground : CustomColours.lightSurface,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 0, left: 24.0, right: 24, bottom: 24.0),
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
                  Text("Let's create your account!",
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 24.0),
                ],
              ),
              // Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: FormInputWidget(
                            expands: false,
                            isDark: isDark,
                            prefixIcon: Icons.person,
                            labelText: "First Name",
                            horizontal: 15,
                            vertical: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: FormInputWidget(
                            expands: false,
                            isDark: isDark,
                            prefixIcon: Icons.person,
                            labelText: "Surname",
                            horizontal: 15,
                            vertical: 15,
                          ),
                        ),
                      ],
                    ),
                    // Email input
                    FormInputWidget(
                      isDark: isDark,
                      prefixIcon: Icons.email,
                      labelText: "Email",
                      horizontal: 15,
                      vertical: 15,
                    ),
                    const SizedBox(height: 4.0),
                    // Password
                    FormInputWidget(
                      isDark: isDark,
                      prefixIcon: Icons.lock,
                      labelText: "Create Password",
                      suffixIcon: Icons.visibility_off,
                      horizontal: 15,
                      vertical: 15,
                    ),
                    const SizedBox(height: 4.0),
                    FormInputWidget(
                      isDark: isDark,
                      prefixIcon: Icons.lock,
                      labelText: "Confirm Password",
                      suffixIcon: Icons.visibility_off,
                      horizontal: 15,
                      vertical: 15,
                    ),

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
                        child: const Text("Create Account"),
                      ),
                    ),

                    const SizedBox(height: 40.0),
                  ],
                ),
              ),
              FormDividerWidget(
                isDark: isDark,
                divderText: "OR",
              ),
              const SizedBox(
                height: 24.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: 20.0,
                        height: 20.0,
                        image: AssetImage(CustomImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: 25.0,
                        height: 25.0,
                        image: AssetImage(CustomImages.facebook),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
