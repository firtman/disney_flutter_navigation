import 'package:flutter/material.dart';

import 'currency_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: ListView(
          children: [
            PageLinkButton(("Bitcoin", "BTC")),
            PageLinkButton(("Ether", "ETH")),
            PageLinkButton(("Litecoin", "LTC")),
            PageLinkButton(("Dogecoin", "DOG")),
          ],
        ),
      ),
    );
  }
}

class PageLinkButton extends StatelessWidget {
  (String, String) currency;
  PageLinkButton(this.currency, {super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor.value;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
          // style: ButtonStyle(backgroundColor: primaryColor),
          onPressed: () {
            // Navigate to a new page
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return CurrencyPage(currency);
              },
            ));
          },
          child: Text("Get ${currency.$1}")),
    );
  }
}
