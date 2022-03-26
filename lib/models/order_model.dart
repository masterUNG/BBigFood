import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrderModel {
  final String id;
  final String idBuyer;
  final String nameBuyer;
  final String idSeller;
  final String nameSeller;
  final String idFood;
  final String nameFood;
  final String priceFood;
  final String amountFood;
  final String sumFood;
  final String total;
  final String status;
  OrderModel({
    required this.id,
    required this.idBuyer,
    required this.nameBuyer,
    required this.idSeller,
    required this.nameSeller,
    required this.idFood,
    required this.nameFood,
    required this.priceFood,
    required this.amountFood,
    required this.sumFood,
    required this.total,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'idBuyer': idBuyer,
      'nameBuyer': nameBuyer,
      'idSeller': idSeller,
      'nameSeller': nameSeller,
      'idFood': idFood,
      'nameFood': nameFood,
      'priceFood': priceFood,
      'amountFood': amountFood,
      'sumFood': sumFood,
      'total': total,
      'status': status,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: (map['id'] ?? '') as String,
      idBuyer: (map['idBuyer'] ?? '') as String,
      nameBuyer: (map['nameBuyer'] ?? '') as String,
      idSeller: (map['idSeller'] ?? '') as String,
      nameSeller: (map['nameSeller'] ?? '') as String,
      idFood: (map['idFood'] ?? '') as String,
      nameFood: (map['nameFood'] ?? '') as String,
      priceFood: (map['priceFood'] ?? '') as String,
      amountFood: (map['amountFood'] ?? '') as String,
      sumFood: (map['sumFood'] ?? '') as String,
      total: (map['total'] ?? '') as String,
      status: (map['status'] ?? '') as String,
    );
  }

  factory OrderModel.fromJson(String source) => OrderModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
