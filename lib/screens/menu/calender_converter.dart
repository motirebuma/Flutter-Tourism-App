import 'package:flutter/material.dart';
import 'package:abushakir/abushakir.dart';

class CalendarConverter extends StatefulWidget {
  @override
  _CalendarConverterState createState() => _CalendarConverterState();
}

class _CalendarConverterState extends State<CalendarConverter> {
  final TextEditingController _inputController = TextEditingController();
  final TextEditingController _outputController = TextEditingController();
  bool _isGregorian = true;

  @override
  void dispose() {
    _inputController.dispose();
    _outputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calendar Converter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: _inputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: _isGregorian
                      ? 'Gregorian Date (YYYY-MM-DD)'
                      : 'Ethiopian Date (YYYY-MM-DD)',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Gregorian'),
                Switch(
                  value: _isGregorian,
                  onChanged: (value) {
                    setState(() {
                      _isGregorian = value;
                      _inputController.text = '';
                      _outputController.text = '';
                    });
                  },
                ),
                Text('Ethiopian'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_isGregorian) {
                    // Convert the Gregorian date to Ethiopian
                    var gregorianDate = DateTime.parse(_inputController.text);
                    EtDatetime ethiopianDate =
                        new EtDatetime.fromMillisecondsSinceEpoch(
                            gregorianDate.millisecondsSinceEpoch);
                    // var ethiopianDate = EthiopianDate.fromDateTime(gregorianDate);
                    _outputController.text =
                        '${ethiopianDate.year}-${ethiopianDate.month}-${ethiopianDate.day}';
                  } else {
                    // Convert the Ethiopian date to Gregorian
                    var ethiopianDate = DateTime.parse(_inputController.text);
                    // DateTime gregorian = new DateTime.fromMillisecondsSinceEpoch(ethiopianDate.moment);
                    // var gregorianDate = ethiopianDate.toDateTimeLocal();

                    EtDatetime ethiopian =
                        EtDatetime.parse(ethiopianDate.toString());
                    DateTime gregorianDate =
                        new DateTime.fromMillisecondsSinceEpoch(
                            ethiopian.moment);
                    _outputController.text =
                        '${gregorianDate.year}-${gregorianDate.month.toString().padLeft(2, '0')}-${gregorianDate.day.toString().padLeft(2, '0')}';
                  }
                });
              },
              child: Text('Convert'),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: _outputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: _isGregorian
                      ? 'Ethiopian Date (YYYY-MM-DD)'
                      : 'Gregorian Date (YYYY-MM-DD)',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
