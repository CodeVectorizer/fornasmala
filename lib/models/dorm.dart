import 'dart:convert';

class Dorm {
  int? id;
  String? name;
  String? description;
  String? address;
  int? price;
  int? rating;
  int? isRecommended;
  String? photo;
  String? type;
  String? numberPhone;
  DateTime? createdAt;
  DateTime? updatedAt;

  Dorm({
    this.id,
    this.name,
    this.description,
    this.address,
    this.price,
    this.rating,
    this.isRecommended,
    this.photo,
    this.type,
    this.numberPhone,
    this.createdAt,
    this.updatedAt,
  });

  factory Dorm.fromMap(Map<String, dynamic> data) => Dorm(
        id: data['id'] as int?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        address: data['address'] as String?,
        price: data['price'] as int?,
        rating: data['rating'] as int?,
        isRecommended: data['is_recommended'] as int?,
        photo: data['photo'] as String?,
        type: data['type'] as String?,
        numberPhone: data['number_phone'] as String?,
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
        'description': description,
        'address': address,
        'price': price,
        'rating': rating,
        'is_recommended': isRecommended,
        'photo': photo,
        'type': type,
        'number_phone': numberPhone,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Dorm].
  factory Dorm.fromJson(String data) {
    return Dorm.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Dorm] to a JSON string.
  String toJson() => json.encode(toMap());
}
