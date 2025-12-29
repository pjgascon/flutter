class SuperheroDetailResponse {
  final String id;
  final String name;
  final String url;

  SuperheroDetailResponse({required this.id, required this.name, required this.url});

  factory SuperheroDetailResponse.fromJson(Map<String, dynamic> json) {
    return SuperheroDetailResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      url: 'http://192.168.0.154/1111.jpg',
      // url: json['image']['url'] as String,
    );
  }
}