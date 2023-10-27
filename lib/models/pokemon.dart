class Pokemon {
  final int id;
  final String name;
  final String url;

  const Pokemon({
    required this.id,
    required this.name,
    required this.url,
  });

  factory Pokemon.fromJson(Map<String, dynamic> data) {
    return Pokemon(
      id: data["id"] as int,
      name: data["name"] as String,
      url: data["url"] as String,
    );
  }
}
