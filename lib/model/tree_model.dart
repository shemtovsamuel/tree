class TreeModel {
  final String id;
  final String name;
  final String species;
  final double height;
  final double circumference;
  final String adress;
  final double latitude;
  final double longitude;

  TreeModel(
      {required this.id,
      required this.name,
      required this.species,
      required this.height,
      required this.circumference,
      required this.adress,
      required this.latitude,
      required this.longitude});

  factory TreeModel.fromJson(Map<String, dynamic> json) {
    return TreeModel(
      id: json['recordid'] ?? 'id unknown',
      name: json['fields']['libellefrancais'] ?? 'name unknown',
      species: json['fields']['espece'] ?? 'species unknown',
      height: json['fields']['hauteurenm'] ?? 0.0,
      circumference: json['fields']['circonferenceencm'] ?? 0.0,
      adress: json['fields']['adresse'] ?? 'adress unknown',
      latitude: json['fields']['geo_point_2d'][0] ?? 0.0,
      longitude: json['fields']['geo_point_2d'][1] ?? 0.0,
    );
  }
}
