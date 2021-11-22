
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:miniproject/src/configs/api.dart';
import 'package:miniproject/src/model/apartment_model.dart';
import 'package:miniproject/src/model/condo_model.dart';
import 'package:miniproject/src/model/dormitory_model.dart';
import 'package:miniproject/src/model/mansion_model.dart';

class NetworkService {
  NetworkService._internal();

  static final NetworkService _instace = NetworkService._internal();

  factory NetworkService() => _instace;

  static final Dio _dio = Dio();

  // get condo
  Future<CondoModel> getAllCondoDio() async {
    // var url = API.BASE_URL + '/flutterapi/getAllGames_7.php';
    var url = API.BASE_URL + API.CONDO;
    print('url getAllCondoDio() = ' + url);
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      print(response.data);
      return condoModelFromJson(json.encode(response.data));
    }
    throw Exception('Network failed');

  }
  Future<String> addCondoDio(File imageFile, Condo condo) async {
    FormData data = FormData.fromMap({
      'condo_id': condo.condoId,
      // 'game_name': game.gameName,
      // 'game_price': int.parse(game.gamePrice),
      // 'game_detail': game.gameDetail,
      // //'game_img': game.gameImg,
      // 'game_stock': int.parse(game.gameStock),
      // if (imageFile != null)
      //   'game_img': 'has_image'
      // else
      //   'game_img': 'no_image',
      // if (imageFile != null)
      //   'photo': await MultipartFile.fromFile(
      //     imageFile.path,
      //     contentType: MediaType('image', 'jpg'),
      //   ),
    });
    try {
      final response = await _dio.post(API.BASE_URL + API.CONDO, data: data);
      print(response);
      if (response != null) {
        if (response.statusCode == 200) {
          print(response.data);
          if (response.data > 0) {
            return 'Add Successfully';
          } else {
            return 'Add Failed';
          }
        }
      } else {
        print('response is nulllllll');
      }
    } catch (DioError) {
      print('Exception --> response is nulllllll');
      print(DioError.toString());
      throw DioError();
    }
  }
  // get apartment
  Future<ApartmentModel> getAllApartment() async {
    // var url = API.BASE_URL + '/flutterapi/getAllGames_7.php';
    var url = API.BASE_URL + API.APARTMENT;
    print('url getAllApartment() = ' + url);
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      print(response.data);
      return apartmentModelFromJson(json.encode(response.data));
    }
    throw Exception('Network failed');
  }
  // get mansion
  Future<MansionModel> getAllMansionDio() async {
    // var url = API.BASE_URL + '/flutterapi/getAllGames_7.php';
    var url = API.BASE_URL + API.MANSION;
    print('url getAllMansionDio() = ' + url);
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      print(response.data);
      return mansionModelFromJson(json.encode(response.data));
    }
    throw Exception('Network failed');
  }
  // get mansion
  Future<DormitoryModel> getAllDormitoryDio() async {
    // var url = API.BASE_URL + '/flutterapi/getAllGames_7.php';
    var url = API.BASE_URL + API.DORMITORY;
    print('url getAllDormitoryDio() = ' + url);
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      print(response.data);
      return dormitoryModelFromJson(json.encode(response.data));
    }
    throw Exception('Network failed');
  }
  //Login
  Future<String> validateUserLoginDio(String username, String password) async {
    FormData data = FormData.fromMap({
      'username': username,
      'password': password,
    });
    try {
      //var url = API.BASE_URL + '/flutterapp/f_user_login.php';
      //var url = API.BASE_URL + '/api/user';
      var url = API.BASE_URL + '/flutterapi/api/user';
      final response = await _dio.post(url, data: data);
      if (response.statusCode == 200) {
        var jsonString = response.data;
        // var jsonMap = json.encode(jsonString);
        String username = jsonString["username"];
        print('username = ' + username);
        String password = jsonString["password"];
        print('password = ' + password);
        if (username != 'failed') {
          return 'pass';
        } else {
          return 'failed';
        }
      } else {
        return 'failed';
      }
    } catch (Exception) {
      throw Exception('Network failed');
    }
  }


}//end