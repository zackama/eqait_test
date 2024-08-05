import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SocendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anonymous',style: TextStyle(color: Colors.purple, fontSize: 30,)),
        backgroundColor: Colors.white,
        toolbarHeight: 150.0,
        leading: const Icon(Icons.person, size: 40, color: Colors.red,),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image: ResizeImage(
                                      AssetImage('assets/inspection.png'),
                                      width: 60,
                                      height: 70),
                                  alignment: Alignment.center),
                            ),
                            width: 90,
                            height: 120,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child:  Text(
                                "Inspection",
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: ResizeImage(
                                    AssetImage('assets/fiber.png'),
                                    width: 60,
                                    height: 70),
                                alignment: Alignment.center,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple, BlendMode.color),
                              ),
                            ),
                            width: 90,
                            height: 120,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child:  Text(
                                "e-PAT",
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: ResizeImage(
                                    AssetImage(
                                        'assets/material-management.png'),
                                    width: 60,
                                    height: 70),
                                alignment: Alignment.center,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple, BlendMode.color),
                              ),
                            ),
                            width: 90,
                            height: 120,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child:  Text(
                                "MDM",
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: ResizeImage(
                                    AssetImage('assets/surveyor.png'),
                                    width: 60,
                                    height: 70),
                                alignment: Alignment.center,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple, BlendMode.color),
                              ),
                            ),
                            width: 90,
                            height: 120,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child:  Text(
                                "FO Survey",
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: ResizeImage(
                                    AssetImage('assets/surveyor.png'),
                                    width: 60,
                                    height: 70),
                                alignment: Alignment.center,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple, BlendMode.color),
                              ),
                            ),
                            width: 90,
                            height: 120,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child:  Text(
                                "RF Survey",
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: ResizeImage(
                                    AssetImage('assets/settings.png'),
                                    width: 60,
                                    height: 70),
                                alignment: Alignment.center,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple, BlendMode.color),
                              ),
                            ),
                            width: 90,
                            height: 120,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child:  Text(
                                "Settings",
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
