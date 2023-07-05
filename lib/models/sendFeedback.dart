import 'package:http/http.dart' as http;

Future<void> sendFeedback(String fullname, String rating, String description,
    String locationname) async {
  final url = Uri.parse('http://localhost/php-API/feedback/sendreview.php');
  final response = await http.post(url, body: {
    'fullname': fullname,
    'rating': rating,
    'description': description,
    'locationname': locationname,
  });

  if (response.statusCode == 201) {
    print('Feedback sent successfully');
  } else {
    print('Failed to send feedback. Error: ${response.statusCode}');
  }
}
