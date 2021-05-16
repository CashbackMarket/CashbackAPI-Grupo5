import 'package:consumindo_api_com_flutter/home/http/http_controller.dart';
import 'package:consumindo_api_com_flutter/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HttpPage extends GetView<HttpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('Http'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          padding: const EdgeInsets.all(4.0),
          itemExtent: 75.0,
          itemCount: state.length,
          itemBuilder: (_, index) {
            final UserModel item = state[index];
            return ListTile(
              leading: const Icon(Icons.attach_money_sharp),
              title: Text(
                item.nome,
              ),
              subtitle: Text(
                  'Cashback: R\$ ${(item.transacoes * 0.30).toStringAsFixed(2)}'),
            );
          },
        );
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error),
              TextButton(
                onPressed: () => controller.findUsers(),
                child: Text('Tentar novamente'),
              )
            ],
          ),
        );
      }),
    );
  }
}
