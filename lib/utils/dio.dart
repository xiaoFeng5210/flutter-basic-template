import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://api.pub.dev', // 基础URL
    connectTimeout: const Duration(seconds: 3),
    receiveTimeout: const Duration(seconds: 3),
  ),
);


// Get请求
void request() async {
  Response response;
  response = await dio.get('/test?id=12&name=dio');
  print(response.data.toString());
}


void post() async {
  Response response;
  response = await dio.post('/test', data: {'id': 12, 'name': 'dio'});
  print(response.data.toString());
}
