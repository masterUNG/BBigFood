import 'dart:convert';

class SQLiteModel {
  final int? id;
  final String idSeller;
  final String nameSeller;
  final String idMenu;
  final String nameMenu;
  final String price;
  final String amount;
  final String sum;
  SQLiteModel({
     this.id,
    required this.idSeller,
    required this.nameSeller,
    required this.idMenu,
    required this.nameMenu,
    required this.price,
    required this.amount,
    required this.sum,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'idSeller': idSeller,
      'nameSeller': nameSeller,
      'idMenu': idMenu,
      'nameMenu': nameMenu,
      'price': price,
      'amount': amount,
      'sum': sum,
    };
  }

  factory SQLiteModel.fromMap(Map<String, dynamic> map) {
    return SQLiteModel(
      id: map['id']?.toInt() ?? 0,
      idSeller: map['idSeller'] ?? '',
      nameSeller: map['nameSeller'] ?? '',
      idMenu: map['idMenu'] ?? '',
      nameMenu: map['nameMenu'] ?? '',
      price: map['price'] ?? '',
      amount: map['amount'] ?? '',
      sum: map['sum'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SQLiteModel.fromJson(String source) => SQLiteModel.fromMap(json.decode(source));
}
