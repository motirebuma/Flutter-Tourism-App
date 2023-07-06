import 'package:http/http.dart' as http;

Future<void> sendFeedback(String fullname, String rating, String description,
    String locationname) async {
  final url = Uri.parse(
      'https://fluttertravellapi.000webhostapp.com/postreview.php?username=$fullname&rating=$rating&review=$description&place=$locationname');
  final response = await http.get(url);

  if (response.statusCode == 201) {
    print('Feedback sent successfully');
  } else {
    print('Failed to send feedback. Error: ${response.statusCode}');
  }
}
