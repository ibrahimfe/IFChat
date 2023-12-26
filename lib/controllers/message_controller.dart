import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ifchat/controllers/function.dart';
import 'package:ifchat/models/message.dart';
import 'package:ifchat/views/chat.dart';

class MessageController {
  Future<List<Product>> getMessages() async {
    final response = await http.get(Uri.parse('$url/messages'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['data'];
      List<Product> products =
          data.map((json) => Product.fromJson(json)).toList();
      return products;
    } else {
      throw Exception('Unable to load data');
    }
  }

  Future<void> addProduct(
      BuildContext context, String text, String name) async {
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
      showLoadingIndicator(context, 'Adding product...');
      final response = await http.post(
        Uri.parse('$url/messages'),
        body: jsonEncode({
          'name': name,
          'text': text,
        }),
        headers: <String, String>{
          'Content-type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        // Product added successfully
        // You can handle successful response here if needed
      } else {
        // Adding product failed
        print(
            'Failed to add product. Server responded with status ${response.statusCode}');
        print('Response body: ${response.body}');
        throw Exception('Failed to add product');
      }

      Navigator.pop(context);
    } catch (e) {
      Navigator.pop(context);
      popUp('Error adding product: $e');
      throw Exception('Failed to add product');
    }
  }
}
