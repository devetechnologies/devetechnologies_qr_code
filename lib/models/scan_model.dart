import 'dart:convert';

List<ScanModel> scanModelFromJson(String str) =>
    List<ScanModel>.from(json.decode(str).map((x) => ScanModel.fromJson(x)));

String scanModelToJson(List<ScanModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ScanModel {
  ScanModel({
    this.id,
    this.tipo,
    this.valor,
  }) {
    valor ??= "";
  }

  int? id;
  String? tipo;
  String? valor;

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
