import 'dart:convert';

class Organization {
  int? id;
  String? name;
  String? email;
  String? photo;
  String? numberPhone;
  String? address;
  String? instagram;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;

  Organization({
    this.id,
    this.name,
    this.email,
    this.photo,
    this.numberPhone,
    this.address,
    this.instagram,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory Organization.fromMap(Map<String, dynamic> data) => Organization(
        id: data['id'] as int?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        photo: data['photo'] as String?,
        numberPhone: data['number_phone'] as String?,
        address: data['address'] as String?,
        instagram: data['instagram'] as String?,
        description: data['description'] as String?,
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
        'email': email,
        'photo': photo,
        'number_phone': numberPhone,
        'address': address,
        'instagram': instagram,
        'description': description,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Organization].
  factory Organization.fromJson(String data) {
    return Organization.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Organization] to a JSON string.
  String toJson() => json.encode(toMap());
}
