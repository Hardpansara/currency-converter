// ignore_for_file: camel_case_types, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class currencyconvertormaterialpagee extends StatefulWidget {
 const currencyconvertormaterialpagee({super.key});
  @override
  State<currencyconvertormaterialpagee> createState() => _currencyconvertormaterialpagee();
}

class _currencyconvertormaterialpagee
    extends State<currencyconvertormaterialpagee> {
       double resultusd = 0;
       double resulteuro = 0;
    final TextEditingController textEditingController = TextEditingController();
  @override
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  Widget build(BuildContext) {
   
    // ignore: non_constant_identifier_names
    final Border = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 0, 0, 0),
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(5));
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
              //input field
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
              //button
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                   setState(() {
                    resultusd = double.parse(textEditingController.text)/83.59;
                    resulteuro = double.parse(textEditingController.text)/90.81;
                     
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
                  child: const Text('Convert'),
                ),
                
              ),Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                   setState(() {
                    resultusd = 0.000;
                    resulteuro = 0.000;
                     
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
       



        );
  }
}
