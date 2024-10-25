
import 'package:flutter/material.dart';
import 'package:tugas_2/page_1.dart';
import 'package:tugas_2/page_2.dart';
import 'package:tugas_2/page_3.dart';
import 'package:tugas_2/page_4.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  static String routes = '/home';
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Text(
                'Belajar Widget Flutter',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Page1.routes),
                    child: Column(
                      children: [
                        Image.network(
                          'https://www.mitsubishi-motors.co.id/storage/editor-images/1610984760.png',
                          width: 200,
                          height: 200,
                        ),
                        const Text('mobil'),
                      ],
                    ),
                  ),
                  Column(children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Page2.routes),
                      child: Image.network(
                        'https://www.mitsubishi-motors.co.id/storage/editor-images/1610984760.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    const Text('mobil')
                  ]),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, Page3.routes),
                          child: Image.network(
                            'https://www.mitsubishi-motors.co.id/storage/editor-images/1610984760.png',
                            width: 200,
                            height: 200,
                          )),
                      const Text('mobil'),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, Page4.routes),
                        child: Image.network(
                          'https://www.mitsubishi-motors.co.id/storage/editor-images/1610984760.png',
                          width: 200,
                          height: 200,
                        ),
                      ),
                      const Text('mobil'),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
