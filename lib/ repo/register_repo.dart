import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:project14/utils/apis.dart';

class RegisterRepo {
  static Future<void> register({
    required String email,
    required String name,
    required String phoneNumber,
    required String password,
    required Function(String successMessage) onSuccess,
    required Function(String message) onError,
  }) async {
    try {
      var headers = {
        "Accept": "application/json",
      };
      var body = {
        "name": name,
        "phone": phoneNumber,
        "email": email,
        "password": password,
        "type": "customer",
      };
      log(Api.registerUrl);
      http.Response response = await http.post(Uri.parse(Api.registerUrl),
          headers: headers, body: body);

      // log(json.encode(body));
      // log(response.body);

      dynamic data = jsonDecode(response.body);
      log(response.body);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        onSuccess(data["message"]);
      } else {
        onError(data["message"]);
      }
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      onError("Sorry something went wrong");
    }
  }
}
