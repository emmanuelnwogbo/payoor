import 'package:flutter/material.dart';

import 'package:payoor_mobile/src/helpers/_variables.dart';

import 'package:payoor_mobile/src/components/_sectionheader.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainSidePadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SectionHeader(title: 'Shop by Category'),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.17,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8, // Number of pairs (Container + SizedBox)
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            // Set your desired background color
                            borderRadius: BorderRadius.circular(
                                9.0), // Add the border radius here
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(9.0),
                                    child: Image.network(
                                      'https://res.cloudinary.com/dqmgqhman/image/upload/v1698529859/pexels-photo-958545_ho4wbt.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              const Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Center(
                                        child: Text('hello there',
                                            style: TextStyle(fontSize: 15.0)))),
                              )
                            ],
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  );
                },
              )),
        ],
      ),
    );
  }
}
