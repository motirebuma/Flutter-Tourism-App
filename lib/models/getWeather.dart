import 'package:http/http.dart' as http;
import 'dart:convert';

class getWeather {
  Future<dynamic> weather(String query) async {
    final url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$query&appid=c845d0dbe352ead32111f8ef32c53fa4&units=metric");

    try {
      final response = await http.get(url);
      final result = response.body;
      Map<String, dynamic> data = json.decode(result);
      // print(data);
      dynamic temp = (data['main'] as Map<String, dynamic>)["temp"];
      // print(temp);
    } catch (error) {
//       print(error);
      print('result not found...!');
    }
  }
}
