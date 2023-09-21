import 'package:http/http.dart' as http;

final class LoginApi {

  static Future<bool> login(String login, String senha) async {
    var url = Uri.https('livrowebservices.com.br', 'rest\login');
    var parameters = {
      'login': login, 
      'senha': senha};

    var response = await http.post(url, body: parameters);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');



    return true;
  }

}