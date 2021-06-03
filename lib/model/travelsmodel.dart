import 'dart:convert';

class TravelModel {
  int? id;
  String? travel;
  String? image;
  String? location;
  TravelModel({
    this.id,
    this.travel,
    this.image,
    this.location,
  });

  TravelModel copyWith({
    int? id,
    String? travel,
    String? image,
    String? location,
  }) {
    return TravelModel(
      id: id ?? this.id,
      travel: travel ?? this.travel,
      image: image ?? this.image,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'travel': travel,
      'image': image,
      'location': location,
    };
  }

  factory TravelModel.fromMap(Map<String, dynamic> map) {
    return TravelModel(
      id: map['id'],
      travel: map['travel'],
      image: map['image'],
      location: map['location'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TravelModel.fromJson(String source) =>
      TravelModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TravelModel(id: $id, travel: $travel, image: $image, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TravelModel &&
        other.id == id &&
        other.travel == travel &&
        other.image == image &&
        other.location == location;
  }

  @override
  int get hashCode {
    return id.hashCode ^ travel.hashCode ^ image.hashCode ^ location.hashCode;
  }
}
