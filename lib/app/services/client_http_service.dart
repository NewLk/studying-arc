import 'package:my_app/app/interfaces/client_http_interface.dart';
import 'package:dio/dio.dart';

class ClientHttpService implements IClientHttp {
  final Dio dio = Dio();

  @override
  Future<Map<String, dynamic>> get(String url) async {
    print("this is url: $url");
    var res = await dio.get(url);
    return res.data;
  }
}
