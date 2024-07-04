import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon_app/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    // 값을 담을 리스트 초기화
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    // http get으로 응답하면 Response가 리턴됨.
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // List<dynamic>을 안넣어도 되긴 하지만, 리스트라는 것을 명시적으로 보여주기 위해 넣음.
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        // json 응답 데이터를 답음.
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
