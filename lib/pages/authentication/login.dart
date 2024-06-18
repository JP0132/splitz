import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitz/pages/authentication/signup.dart';
import 'package:splitz/pages/authentication/widgets/FormDividerWidget.dart';
import 'package:splitz/pages/authentication/widgets/FormInputWidget.dart';
import 'package:splitz/utils/constants/images.dart';
import 'package:splitz/utils/helpers/HelperFunctions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Helperfunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 56.0, left: 24.0, bottom: 24.0, right: 24.0),
          child: Column(
            children: [
              // Logo and Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 100,
                    width: 250,
                    image: AssetImage(isDark
                        ? CustomImages.darkThemeLogo
                        : CustomImages.lightThemeLogo),
                  ),
                  const SizedBox(height: 16.0),
                  Text("Welcome back to SPLITZ",
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 16.0),
                ],
              ),
              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: Column(
                    children: [
                      // Email input
                      FormInputWidget(
                        isDark: isDark,
                        prefixIcon: Icons.email,
                        labelText: "Email",
                      ),
                      const SizedBox(height: 16.0),
                      // Password
                      FormInputWidget(
                        isDark: isDark,
                        prefixIcon: Icons.lock,
                        labelText: "Password",
                        suffixIcon: Icons.visibility_off,
                      ),

                      const SizedBox(height: 4.0),

                      // Forgot Password
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text("Forgot Password")),
                      ),
                      const SizedBox(height: 8.0),

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
                          child: const Text("Sign In"),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const SignUpPage()),
                          style: OutlinedButton.styleFrom(
                            backgroundColor:
                                Colors.transparent, // Background color
                            foregroundColor:
                                isDark ? Colors.white : Colors.black,
                            side: BorderSide(
                              color: isDark
                                  ? Colors.white
                                  : Colors.black, // Border color
                              width: 2, // Border width
                            ), // Text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  25), // Button border radius
                            ),

                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 24),
                          ),
                          child: const Text("Create Account"),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
              FormDividerWidget(
                isDark: isDark,
                divderText: "OR",
              ),
              const SizedBox(
                height: 16.0,
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
