

class GenreModel {
  final String? name;

  GenreModel({this.name});

  factory GenreModel.fromMap(Map json) {
    return GenreModel(name: json['name']);
  }
}
