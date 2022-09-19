import 'package:http/http.dart' as http;

class ApiCall{

  var url = "https://icanhazdadjoke.com/";

  Future getDadJoke() async{
    http.Response response = await http.get(Uri.parse(url),
        headers: {"Accept": "text/plain"});

    return response.body;
    // String body = response.body;
    // return body;
  }
}