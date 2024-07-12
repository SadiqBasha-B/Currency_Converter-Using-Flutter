// ignore_for_file: camel_case_types
import 'package:flutter/cupertino.dart';

class currency_convertercuppertino extends StatefulWidget {
  const currency_convertercuppertino({super.key});

  @override
  State<currency_convertercuppertino> createState() => _currency_convertercuppertinoState();
}

class _currency_convertercuppertinoState extends State<currency_convertercuppertino> {
  double result=0;
  final TextEditingController value=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(backgroundColor:const Color.fromARGB(255, 0, 0, 0),
    navigationBar: const CupertinoNavigationBar(

      backgroundColor: Color.fromARGB(255, 223, 252, 1),
      
    middle: Text("currency converter",
     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
     
    
    ),
     child:  Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text("Enter Data",
              style:TextStyle(
                color:Color.fromARGB(255, 232, 7, 214),
                fontSize: 30,
                fontWeight: FontWeight.bold)),
              Text('INR : ${result !=0 ? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
              style:const TextStyle(
               color: CupertinoColors.activeOrange,
               fontSize: 40,
               fontWeight: FontWeight.bold),),
                CupertinoTextField(
                   controller: value,
                   style:
                 const TextStyle(
                  
                   color: CupertinoColors.darkBackgroundGray),
                   decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    color: CupertinoColors.activeBlue
                   ) ,
                   placeholder: "Enter  Amount",
                 keyboardType:  const TextInputType.numberWithOptions(decimal: true),
                 ),
          CupertinoButton(onPressed: () {
            
           
                     
                     
                     setState(() {
             result= double.parse(value.text)*81;
            
                     });
           
           }, 
           
           child:const Text("CONVERT")
           
           
           )
              ],
          ),
        ),
      ),);
    
  }
}