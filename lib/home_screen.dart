import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/Recomended.dart';
import 'package:plant_app/custom_btn.dart';
import 'package:plant_app/custom_featured_plants.dart';
import 'package:plant_app/list_details.dart';
import 'package:plant_app/detailsscreen.dart';

class Homescreen extends StatelessWidget {
  final listFlower = Listflowers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/icons.svg',
              height: 30,
            ),
            onPressed: () {},
          )),
      bottomNavigationBar: Container(
        // color: Colors.red,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 2, color: Colors.white, spreadRadius: 2),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/flowericon.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/heart.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/user.svg'),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            'Hi Uishopy',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          const Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/logo.png',
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      width: double.infinity,
                      child: Material(
                        color: Colors.transparent,
                        elevation: 15.0,
                        shadowColor: const Color.fromARGB(255, 146, 243, 150),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search',
                            suffixIcon: const Icon(Icons.search),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(21),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Custombutton(text: 'Recomended', buttonname: 'More'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Recomended(
                            image: listFlower.arrflowers[index]['image'],
                            name: listFlower.arrflowers[index]['name'],
                            country: listFlower.arrflowers[index]['country'],
                            price: listFlower.arrflowers[index]['price'],
                            onpress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                        name: listFlower.arrflowers[index]
                                            ['name']),
                                  ));
                            },
                          );
                        },
                        itemCount: listFlower.arrflowers.length,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Custombutton(text: 'Featured Plants', buttonname: 'More')
                  ],
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomFeatured();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
