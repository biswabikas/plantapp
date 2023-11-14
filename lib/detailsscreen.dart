import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}
