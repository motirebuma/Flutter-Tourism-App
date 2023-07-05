import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FeedbackWidget extends StatefulWidget {
  // final String place;
  String place = 'Addis';

  FeedbackWidget({required this.place});

  @override
  _FeedbackWidgetState createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
  List<dynamic> feedbackList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final url = Uri.parse(
          'http://localhost/php-API/feedback/sendreview.php?place=${widget.place}');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        setState(() {
          feedbackList = json.decode(response.body);
          isLoading = false;
        });
      } else {
        print('Failed to fetch feedback. Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback for ${widget.place}'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: feedbackList.length,
              itemBuilder: (context, index) {
                final feedback = feedbackList[index];
                return ListTile(
                  title: Text(feedback['fullname']),
                  subtitle: Text(feedback['description']),
                  // Render other data fields as needed
                );
              },
            ),
    );
  }
}
