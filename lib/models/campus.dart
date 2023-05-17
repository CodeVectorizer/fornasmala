import 'dart:convert';

class Campus {
  int? id;
  String? name;
  String? address;
  String? numberPhone;
  String? photo;
  String? email;
  String? description;
  String? instagram;
  dynamic website;
  DateTime? createdAt;
  DateTime? updatedAt;

  Campus({
    this.id,
    this.name,
    this.address,
    this.numberPhone,
    this.photo,
    this.email,
    this.description,
    this.instagram,
    this.website,
    this.createdAt,
    this.updatedAt,
  });

  factory Campus.fromMap(Map<String, dynamic> data) => Campus(
        id: data['id'] as int?,
        name: data['name'] as String?,
        address: data['address'] as String?,
        numberPhone: data['number_phone'] as String?,
        photo: data['photo'] as String?,
        email: data['email'] as String?,
        description: data['description'] as String?,
        instagram: data['instagram'] as String?,
        website: data['website'] as dynamic,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'address': address,
        'number_phone': numberPhone,
        'photo': photo,
        'email': email,
        'description': description,
        'instagram': instagram,
        'website': website,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Campus].
  factory Campus.fromJson(String data) {
    return Campus.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Campus] to a JSON string.
  String toJson() => json.encode(toMap());
}
