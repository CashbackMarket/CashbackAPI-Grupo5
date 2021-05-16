import 'dart:convert';

// ignore: unused_import
import 'package:consumindo_api_com_flutter/model/user_type.dart';

class UserModel {
  String id;
  String nome;
  String sobrenome;
  String usuario;
  String email;
  String telefone;
  int transacoes;
  bool cashback;
  int cadastro;

  UserModel(
      {this.id,
      this.nome,
      this.sobrenome,
      this.usuario,
      this.email,
      this.telefone,
      this.transacoes,
      this.cashback,
      this.cadastro});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'sobrenome': sobrenome,
      'usuario': usuario,
      'email': email,
      'telefone': telefone,
      'transacoes': transacoes,
      'cashback': cashback,
      'cadastro': cadastro,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserModel(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      sobrenome: map['sobrenome'] ?? '',
      usuario: map['usuario'] ?? '',
      email: map['email'] ?? '',
      telefone: map['telefone'] ?? '',
      transacoes: map['transacoes'] ?? '',
      cashback: map['cashback'] ?? '',
      cadastro: map['cadastro'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
