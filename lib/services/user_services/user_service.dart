import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medicon/core/snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserService with ChangeNotifier {
  bool isLoading = false;
  bool isLoadingProfile = false;
  dynamic userProfile;
  String status = "";
  String message = "";
  //String baseUrl = "http://localhost:8000";
  String baseUrl = "https://medicon-backend.vercel.app";

  UserService();

  Future updateUser({
    String? country,
    BuildContext? context,
  }) async {
    isLoading = true;
    notifyListeners();
    String url = "$baseUrl/user/update";
    SharedPreferences sf = await SharedPreferences.getInstance();
    String? tokens = sf.getString("token");

    var response = await http.post(
      Uri.parse(url),
      body: {
        "country": country,
      },
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $tokens',
      },
    );
    isLoading = false;
    notifyListeners();
    print(response.body);
    var dataRes = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200 || response.statusCode == 201) {
      isLoading = false;
      notifyListeners();
      successSnackBar(context!, "Onbaording completed successfully");
      //nextPageAndRemovePrevious(context, page: const LoginScreen());
    } else {
      isLoading = false;
      notifyListeners();
      String message = dataRes["message"] == null ? "Something went wrong, please try again" : dataRes["message"];
      errorSnackBar(context!, message);
    }
  }

}