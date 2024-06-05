import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homework1(),
    );
  }
}

//----------------------Homework1--------------------------------------------

class Homework1 extends StatelessWidget {
  const Homework1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff59A4F2),
        ),
        title: Text(
          'ТЕЛЕФОНЫ СЛУЖБ',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff333333),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 35),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextShablon(title: 'Медицина'),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                  SizedBox(width: 20),
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                  SizedBox(width: 20),
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                ],
              ),
            ),
            SizedBox(height: 40),
            TextShablon(title: 'Полиция'),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                  SizedBox(width: 20),
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                  SizedBox(width: 20),
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                ],
              ),
            ),
            SizedBox(height: 40),
            TextShablon(title: 'Посольство'),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                  SizedBox(width: 20),
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                  SizedBox(width: 20),
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                ],
              ),
            ),
            SizedBox(height: 40),
            TextShablon(title: 'Транспорт'),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                  SizedBox(width: 20),
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                  SizedBox(width: 20),
                  ContainerShablon(title: 'Единый телефон \nслужб'),
                ],
              ),
            ),
            SizedBox(height: 40),
            TextShablon(title: 'Свои номера'),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 83,
                    width: 83,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffF1564A),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/+.png',
                        height: 16,
                        width: 16,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    alignment: Alignment.center,
                    height: 83,
                    width: 174,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff59A4F2),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/hotel.png',
                          height: 51,
                          width: 51,
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Отель\nНевский',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    alignment: Alignment.center,
                    height: 83,
                    width: 174,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff59A4F2),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/hotel.png',
                          height: 51,
                          width: 51,
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Отель\nНевский',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
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

class TextShablon extends StatelessWidget {
  final String title;

  const TextShablon({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color(0xff333333),
      ),
    );
  }
}

class ContainerShablon extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;

  const ContainerShablon({
    super.key,
    required this.title,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      alignment: Alignment.center,
      height: height ?? 83,
      width: width ?? 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff59A4F2),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/medicine.png',
            height: 51,
            width: 51,
          ),
          SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
