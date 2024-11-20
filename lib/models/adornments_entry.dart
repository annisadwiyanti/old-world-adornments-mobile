// To parse this JSON data, do
//
//     final adornmentsEntry = adornmentsEntryFromJson(jsonString);

import 'dart:convert';

List<AdornmentsEntry> adornmentsEntryFromJson(String str) => List<AdornmentsEntry>.from(json.decode(str).map((x) => AdornmentsEntry.fromJson(x)));

String adornmentsEntryToJson(List<AdornmentsEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AdornmentsEntry {
    String model;
    String pk;
    Fields fields;

    AdornmentsEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory AdornmentsEntry.fromJson(Map<String, dynamic> json) => AdornmentsEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    String size;
    String color;
    int quantity;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.size,
        required this.color,
        required this.quantity,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        size: json["size"],
        color: json["color"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "size": size,
        "color": color,
        "quantity": quantity,
    };
}
