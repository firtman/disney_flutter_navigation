import 'package:flutter/material.dart';

class CurrencyPage extends StatelessWidget {
  (String, String) currency;
  CurrencyPage(this.currency, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(currency.$1)),
      body: const Placeholder(),
    );
  }
}
