
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class currency_converter extends StatefulWidget {
  const currency_converter({super.key});

  @override
  State<currency_converter> createState() => _currency_converterState();
}

class _currency_converterState extends State<currency_converter> {
    double result=0;
  final TextEditingController value=TextEditingController();

@override
  void dispose() {
    value.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {    
    return  Scaffold(backgroundColor: Colors.black,
    appBar: AppBar(

      backgroundColor: Colors.white,
      elevation: 50,
     title: const   Text("CURRENCY CONVERTER",
     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
     centerTitle: true,
     actions: const [ Icon(Icons.currency_exchange,
     color: Colors.black,),],
    ),
     body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text("Amount",
              style:TextStyle(
                color:Color.fromARGB(255, 252, 249, 251),
                fontSize: 32,
                fontWeight: FontWeight.bold)),
                const SizedBox(height: 10,),
              Text('INR : ${result !=0 ? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
              style:const TextStyle(
               color: Colors.white,
               fontSize: 32,
               fontWeight: FontWeight.bold),),
               const SizedBox(height: 20,),
                 TextField(
                   controller: value,
                   style:
                 const TextStyle(
                  
                   color: Color.fromARGB(255, 15, 44, 12)),
                   decoration: const InputDecoration(
                     hintText: "enter amount in USD",
                     hintStyle: TextStyle(
                       color: Colors.black),
                     prefixIcon: Icon(Icons.monetization_on),
                     prefixIconColor: Color.fromARGB(255, 243, 13, 13),
                 
                     filled: true,
                     fillColor: Colors.white70,
                    focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 5.5,
                         color: Colors.white,
                         style: BorderStyle.solid,
                         
                       ),
                       borderRadius: BorderRadius.all(Radius.circular(30))
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 40,
                         color: Color.fromARGB(255, 251, 251, 251),
                         style: BorderStyle.solid,
                         
                       ),
                       borderRadius:  BorderRadius.all(Radius.circular(23))
                     )
                   ),
                 keyboardType:  const TextInputType.numberWithOptions(decimal: true),
                 ),
                 const SizedBox(height: 30,),
           TextButton(onPressed: () {
            
           
                     
                     
                     setState(() {
             result= double.parse(value.text)*81;
            
                     });
                    
         
             
           }, 
           
           style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 255, 248, 236)),
            foregroundColor:const  MaterialStatePropertyAll(Colors.grey),
            fixedSize: const MaterialStatePropertyAll(Size(150,50)),
            shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
           ),
           child:const Text("CONVERT",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
           
           
           )
              ],
          ),
        ),
      ),);
  }
}