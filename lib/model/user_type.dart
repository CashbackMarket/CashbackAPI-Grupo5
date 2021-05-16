import 'dart:convert';

class UserType {
  String id;
  String nome;
  String sobrenome;
  String usuario;
  String email;
  String telefone;
  int transacoes;
  bool cashback;
  int cadastro;

  UserType(
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

  factory UserType.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserType(
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

  factory UserType.fromJson(String source) =>
      UserType.fromMap(json.decode(source));
}
