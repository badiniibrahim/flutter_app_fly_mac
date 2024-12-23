import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        // Image de fond
        Positioned.fill(
          bottom: screenHeight * 0.4,
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        // Titre
        Positioned(
          bottom: screenHeight * 0.3,
          left: screenWidth * 0.05,
          right: screenWidth * 0.05,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // Description
        Positioned(
          bottom: screenHeight * 0.2,
          left: screenWidth * 0.05,
          right: screenWidth * 0.05,
          child: Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
