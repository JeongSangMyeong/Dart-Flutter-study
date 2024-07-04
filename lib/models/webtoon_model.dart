class WebtoonModel {
  final String title, thumb, id;

  // Named Constructure
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
