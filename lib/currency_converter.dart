import 'package:flutter/material.dart';
class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
      double result =0.0;
    final TextEditingController textEditingController=TextEditingController();

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
             Text('INR ${result.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                
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
                
              ),
            ),
            const SizedBox(height: 20,),
            TextButton(onPressed: (){
              setState(() {
                              result=double.parse(textEditingController.text)*82;

              });
            },
            style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 100, 83, 155),
              foregroundColor:Colors.white,

            ),
             child:const Text("Convert")
             ),
            
          ]
        ),
      ),
    );
  }
  }




