import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as Client;
import '../model/response_data.dart';
import '../model/news_response_model.dart';

class NewsAPI {


  Future<NewsResponseModel> fetchNews() async {
    final url = "https://content.guardianapis.com/search?api-key=[API KEY]";
    var respBody;

    print(url);

    try {
      final httpResponse = await Client.get(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },

      );

      print(json.decode(httpResponse.statusCode.toString()));
      print(json.decode(httpResponse.body));


      if (httpResponse.statusCode == 200) {
        respBody = jsonDecode(httpResponse.body);
        ResponseData.newsResponseModel = NewsResponseModel.fromJson(respBody['response']);
        ResponseData.newsList = ResponseData.newsResponseModel.results;
         //   (ResponseData.newsResponseModel.results as List)
           //     .map((i) => new Results.fromJson(i)).toList();
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    return ResponseData.newsResponseModel;
    
  }
}
