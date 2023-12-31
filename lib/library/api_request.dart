import 'package:dio/dio.dart';

class ApiRequest {
  final String url;
  final Map data;

  ApiRequest({
    required this.url,
    required this.data,
  });

  Dio _dio() {
    //put token
    return Dio(
      BaseOptions(
        headers: {
          'Authorization': 'B ....',
        },
      ),
    );
  }

  void get({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    _dio().get(url, queryParameters: Map.from(data)).then((res) {
      onSuccess(res.data);
    }).catchError((error) {
      onError(error);
    });
  }
}
