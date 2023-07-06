import 'dart:math';

import 'package:flutter/material.dart';
import 'package:abushakir/abushakir.dart';

import 'calender_converter.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  ETC current = ETC.today();
  ETC now = ETC.today();
  BahireHasab bh = BahireHasab();

// change Image
  List<String> imageList = [
    'assets/calendar/0.jpg',
    'assets/calendar/1.jpg',
    // Todo add image 2.jgp,
    'assets/calendar/3.jpg',
    'assets/calendar/4.jpg',
    'assets/calendar/5.jpg',
    'assets/calendar/6.jpg',
    'assets/calendar/7.jpg',
    'assets/calendar/8.jpg',
    'assets/calendar/9.jpg',
    'assets/calendar/10.jpg',
    // Add more image paths here
  ];
  var currentImage = 'assets/calendar/1.jpg';

  void changeImage() {
    // Get a random index from the imageList
    final random = Random();
    int randomIndex = random.nextInt(imageList.length);

    setState(() {
      // Set the currentImage to the randomly selected image path
      currentImage = imageList[randomIndex];
    });
  }

  @override
  void initState() {
    super.initState();
    bh = BahireHasab(year: current.year);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var days = current.monthDays().toList();
    var startJump = days[0].last;
    var today = EtDatetime(year: now.year, day: now.day, month: now.month);

    var events = bh.allAtswamat
        .where(
          (element) => element['day']['month'] == current.monthName,
        )
        .toList();

    return Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      appBar: AppBar(
        foregroundColor: Color(0xffd27504),
        backgroundColor: Color(0xff1c1c1c),
        title: const Text('Ethiopian Calendar'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          // padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                child: Image.asset(
                  currentImage,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xff1c1c1c),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              current = current.prevMonth;
                              changeImage();
                            });
                          },
                          icon: const Icon(Icons.chevron_left),
                          iconSize: 30,
                          color: Color(0xffd27504),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = now;
                            });
                          },
                          child: Text(
                            "${current.monthName} ${current.year}",
                            style: const TextStyle(
                              fontSize: 26,
                              color: Color(0xffd27504),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              current = current.nextMonth;
                              changeImage();
                            });
                          },
                          icon: const Icon(Icons.chevron_right),
                          iconSize: 30,
                          color: Color(0xffd27504),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: GridView.count(
                        crossAxisCount: 7,
                        children: now.weekdays
                            .map(
                              (e) => Center(
                                child: Text(
                                  '$e'.substring(0, 2),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffd27504),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 7 * 40,
                      child: GridView.count(crossAxisCount: 7, children: [
                        ...List.filled(startJump, 0)
                            .map(
                              (e) => const Center(
                                child: Text(''),
                              ),
                            )
                            .toList(),
                        ...days
                            .map(
                              (e) => Container(
                                decoration: BoxDecoration(
                                  color: today.compareTo(fromArray(e)) == 0
                                      ? Color.fromARGB(255, 143, 141, 139)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    '${e[2]}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            today.compareTo(fromArray(e)) == 0
                                                ? Color(0xff1c1c1c)
                                                : Color(0xffd27504)
                                        // color: Color(0xffd27504),
                                        ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  EtDatetime fromArray(List<dynamic> date) {
    return EtDatetime(year: date[0], month: date[1], day: date[2]);
  }
}
