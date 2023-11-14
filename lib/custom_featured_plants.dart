import 'package:flutter/material.dart';

class CustomFeatured extends StatelessWidget {
  const CustomFeatured({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 1,
              color: Colors.green.withOpacity(0.5),
            ),
          ],
          image: DecorationImage(
              image: AssetImage('assets/images/featauredplants.png'),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
