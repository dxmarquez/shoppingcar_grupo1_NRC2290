import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';
import '../app.dart';

void update_total() {
  final ShoppingController shoppingController = Get.find();
  print(counterNotifier.value);
  counterNotifier.value = shoppingController.total.toInt();
  counterNotifier.notifyListeners();
}

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  final ShoppingController shoppingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        //TODO
        // aquí debemos observar la variable total del shoppingControlle
        child: Column(
          children: <Widget>[
            ValueListenableBuilder(
              valueListenable: counterNotifier,
              builder: (context, value, _) {
                return Text('$value USD',
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.blueGrey,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w400));
              },
            ),
          ],
        ),
      ),
    );
  }
}
