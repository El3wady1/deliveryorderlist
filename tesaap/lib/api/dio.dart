import 'package:dio/dio.dart';
import 'package:tesaap/constant/string.dart';
import 'package:tesaap/models/arcticles_models.dart';

class NewsService {
  static Future<ArcticleModels> getNews({required String category}) async {
    final dio = Dio();
    Response response = await dio
        .get("$url$point?country=us&category=$category&apiKey=$apikey");

    var jsonData = response.data;
    List<dynamic> Data = jsonData['articles'];
    ArcticleModels data_arc = ArcticleModels.fromJson(Data);
    ArcticleModels data = data_arc;
    print(data);
    return data;
  }
}
