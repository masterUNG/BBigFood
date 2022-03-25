import 'package:bbigfood/utility/sqlite_helper.dart';
import 'package:bbigfood/widgets/show_progress.dart';
import 'package:flutter/material.dart';

class ShowShoppingCart extends StatefulWidget {
  const ShowShoppingCart({
    Key? key,
  }) : super(key: key);

  @override
  _ShowShoppingCartState createState() => _ShowShoppingCartState();
}

class _ShowShoppingCartState extends State<ShowShoppingCart> {
  bool load = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readAllCart();
  }

  Future<void> readAllCart() async {
    await SQLiteHelper().readData().then((value) {
      print('value ===> $value');
      setState(() {
        load = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Show Cart'),),
      body: load ? const ShowProgress() : Text('load finish'),
    );
  }
}
