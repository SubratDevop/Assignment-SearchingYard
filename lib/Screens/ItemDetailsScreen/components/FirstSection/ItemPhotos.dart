import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget itemPhotos() {
  return Container(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                             
                              height: 150,
                          width: 130,
                              child: Image.asset(
                                "Assets/images/Dried_appricots.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 130,
                              child: Image.asset(
                                "Assets/images/Dried_appricots.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      );
                    
}