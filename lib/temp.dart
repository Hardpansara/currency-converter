import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({Key? key}) : super(key: key);

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double resultusd = 0;
  double resulteuro = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 0, 0, 0),
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'USD ${resultusd.toStringAsFixed(3)}',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              'EURO ${resulteuro.toStringAsFixed(3)}',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in INR',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  prefixIcon: const Icon(Icons.currency_rupee),
                  prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: Border,
                  enabledBorder: Border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resultusd =
                          double.parse(textEditingController.text) / 83.59;
                    });
                  },
                  child: const Text('Convert to USD'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resulteuro =
                          double.parse(textEditingController.text) / 90.81;
                    });
                  },
                  child: const Text('Convert to EURO'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    resultusd = 0.0;
                    resulteuro = 0.0;
                  });
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('Reset'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                launch('https://www.linkedin.com/in/hard-pansara-22582a288/');
              },
              child: const Text(
                'Designed by Hard Pansara.',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
