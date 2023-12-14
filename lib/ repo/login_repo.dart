
import 'dart:convert';
import 'dart:developer';

import 'package:project14/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:project14/utils/apis.dart';


class LoginRepo {
  static Future<void> login({
    required String email,
    required String password,
    required Function(User user, String token) onSuccess,
    required Function(String message) onError,
  }) async {
    try {
      var headers = {
        "Accept": "application/json",
      };
      var body = {
        "email": email,
        "password": password,
        "type": "customer",
      };

      http.Response response = await http.post(
        Uri.parse(Api.loginUrl),
        headers: headers,
        body: body,
      );
      dynamic data = jsonDecode(response.body);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        // AccessToken token = AccessToken.fromJson(data["data"]["accessToken"]);
        log("----------------------------------------------------------------");

        String accessToken = data["token"].toString();
        log("----------------------------------------------------------------");
        User user = User.fromJson(data["user"]);

        onSuccess(user, accessToken);
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
