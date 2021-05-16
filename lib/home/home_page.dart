import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('API - Grupo 5'),
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/http'),
              child: Text(
                'Lista de Clientes Gerado por Fake API',
                style: TextStyle(fontSize: 20, color: Colors.tealAccent[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
