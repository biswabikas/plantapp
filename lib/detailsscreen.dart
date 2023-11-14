import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/iconcard.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key,
      required this.name,
      required this.image,
      required this.country,
      required this.price});
  final String name;
  final String image;
  final String country;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(21),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(21),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Description',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 600,
                    //color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon:
                                    SvgPicture.asset('assets/icons/back.svg')),
                          ),
                        ),
                        IconCrad(icon: 'assets/icons/sun.svg'),
                        IconCrad(icon: 'assets/icons/waterleaf.svg'),
                        IconCrad(icon: 'assets/icons/icon.svg'),
                        IconCrad(icon: 'assets/icons/leaf.svg')
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 600,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.contain),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 60,
                            color: Colors.green.withOpacity(0.3))
                      ]),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        price,
                        style: TextStyle(color: Colors.green, fontSize: 24),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    country,
                    style: TextStyle(
                        fontSize: 20, color: Colors.green.withOpacity(0.7)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
