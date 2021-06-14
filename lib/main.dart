import 'package:calculate/calculatebutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String val) {
    print(val);
    if (val == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = "";
      history = '';
    } else if (val == "+" || val == "-" || val == 'x' || val == "/") {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = val;
    } else if (val == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + val).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'calculatrice',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter calculatrice'),
          centerTitle: true,
          backgroundColor: Colors.black87,
          elevation: 0.0,
        ),
        backgroundColor: Colors.black87,
        body: SafeArea(
                  child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(history,
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(color: Colors.blueGrey),
                          fontSize: 24)),
                ),
                alignment: Alignment.centerRight,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('$textToDisplay',
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(color: Colors.blueGrey),
                          fontSize: 48)),
                ),
                alignment: Alignment.centerRight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculateButton(
                    text: 'AC',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: 'C',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '<',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '/',
                    onpressed: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculateButton(
                    text: '9',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '8',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '7',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: 'x',
                    onpressed: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculateButton(
                    text: '6',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '5',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '4',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '-',
                    onpressed: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculateButton(
                    text: '3',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '2',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '1',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '+',
                    onpressed: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculateButton(text: '+/-', onpressed: btnOnClick),
                  CalculateButton(
                    text: '0',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '00',
                    onpressed: btnOnClick,
                  ),
                  CalculateButton(
                    text: '=',
                    onpressed: btnOnClick,
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
