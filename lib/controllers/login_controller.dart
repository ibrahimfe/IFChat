// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ifchat/controllers/function.dart';
import 'package:ifchat/models/user.dart';
import 'package:ifchat/views/chat.dart';

Future<User> fetchUser(String username) async {
  final response = await http.get(Uri.parse('$url/users/username/$username'));

  if (response.statusCode == 404) {
    throw Exception('User tidak ditemukan! periksa kembali username anda!');
  } else {
    try {
      dynamic data = json.decode(response.body)['data'];
      if (data is List) {
        data = data[0];
      }
      User users = User.fromJson(data);
      return users;
    } catch (e) {
      throw Exception('Unable to load data');
    }
  }
}

Future<void> loginUser(
    BuildContext context, String username, String password) async {
  void popUp(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  try {
    showLoadingIndicator(context, 'Sedang login...');
    User users = await fetchUser(username);

    if (username == users.usr && password == users.pwd) {
      // penambahan logic untuk masing-masing user/level
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const ChatPage(),
        ),
      );
      popUp('Selamat datang, $username!');
    } else {
      Navigator.pop(context);
      popUp('User atau Password yang di inputkan salah!');
    }

    // Navigator.pop(loginContext);
  } catch (e) {
    Navigator.pop(context);
    popUp('$e');
  }
}

Future<void> registerUser(
    BuildContext context, String username, String password) async {
  void popUp(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  try {
    showLoadingIndicator(context, 'Sedang mendaftar...');
    final response = await http.post(
      Uri.parse('$url/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      // Registration successful
      popUp('Registrasi berhasil, silakan login!');
    } else {
      // Registration failed
      popUp('Registrasi gagal, coba lagi!');
    }

    Navigator.pop(context);
  } catch (e) {
    Navigator.pop(context);
    popUp('error $e');
  }
}
