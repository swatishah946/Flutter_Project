import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final border=OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff6247aa), width: 2.0,style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(60),
                );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter',style: TextStyle(color: Color(0xffffffff)),),
        
              backgroundColor: Theme.of(context).colorScheme.primary,  // Ensures AppBar has a color
  foregroundColor: Colors.white,  

      ),body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              
                decoration: InputDecoration(
                  hintText: "Enter the amount in USD ",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  iconColor: Colors.black,
                  filled: true,
                  fillColor: Color(0xffdac3e8),
                  focusedBorder: border,
                  enabledBorder: border,
              
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              
            )
            
          ]
        ),
      ),
    );
  }
}


