import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculateButton extends StatelessWidget {
  final String text;
  final onpressed;

  const CalculateButton({ required this.text, this.onpressed}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          
          onPressed: (){
            onpressed(text);
          },
          style: ButtonStyle(
          
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.5))),
          ),
          child: Text(
           text,
           
            style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 24), color: Colors.black),
          ),
        ),
      ),
    );
  }
}
