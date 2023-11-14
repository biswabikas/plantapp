import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconCrad extends StatelessWidget {
  const IconCrad({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 100,
              color: Colors.green.withOpacity(0.6),
            )
          ],
        ),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            icon,
            color: Colors.green,
            height: 40,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
