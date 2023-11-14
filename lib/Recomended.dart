import 'package:flutter/material.dart';

class Recomended extends StatelessWidget {
  const Recomended(
      {super.key,
      required this.image,
      required this.name,
      required this.country,
      required this.price,
      required this.onpress});
  final String image;
  final String name;
  final String country;
  final String price;
  final void Function() onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.green.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 1),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                image,
                height: 150,
                width: 150,
              ),
            ),
            Divider(
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 14, overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          country,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    price,
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
