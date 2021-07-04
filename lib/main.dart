import 'package:flutter/material.dart';

void main() => runApp(IosCalculator());

class IosCalculator extends StatelessWidget {
  const IosCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new IosCalc(),
    );
  }
}

class IosCalc extends StatefulWidget {
  const IosCalc({Key? key}) : super(key: key);
  @override
  _IosCalcState createState() => _IosCalcState();
}


class _IosCalcState extends State<IosCalc> {



  dynamic text = '0';

  int numOne =0;
  int numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';


  Widget btn(btnText, Color color) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: new RaisedButton(
        child: Text(
          btnText,
          style: TextStyle(
              fontSize: 35,
              color: Colors.white
          ),
        ),
        onPressed: () {
          calculation(btnText);
        },
        color: color,
        padding: EdgeInsets.all(20.0),
        shape : CircleBorder(),

      ),

    );
  }
  Widget btnZero(btnText, Color color) {
    return Container(
      child: new RaisedButton(
          child: Text(
            btnText,
            style: TextStyle(
                fontSize: 30,
                color: Colors.white
            ),
          ),
          onPressed: () {calculation(btnText);},
          color: color,
          padding: EdgeInsets.only(left: 85.0,top: 20.0,right: 85.0,bottom: 20.0),
          shape : StadiumBorder()
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded( child: Container(
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 60.0),
                    textAlign: TextAlign.right,

                  ),
                      padding: EdgeInsets.all(10.0)
              )
                 )
            ],
            
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            btn('C', Color(0xffa5a5a5)),
            btn('+/-', const Color(0xffa5a5a5)),
            btn('%', const Color(0xffa5a5a5)),
            btn('/', const Color(0xffff9500))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
            btn('7', Color(0xff5f5f5f)),
            btn('8', const Color(0xff5f5f5f)),
            btn('9', const Color(0xff5f5f5f)),
            btn('x', const Color(0xffff9500))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
            btn('4', Color(0xff5f5f5f)),
            btn('5', const Color(0xff5f5f5f)),
            btn('6', const Color(0xff5f5f5f)),
            btn('-', const Color(0xffff9500))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
            btn('1', Color(0xff5f5f5f)),
            btn('2', const Color(0xff5f5f5f)),
            btn('3', const Color(0xff5f5f5f)),
            btn('+', const Color(0xffff9500))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
            btnZero('0', Color(0xff5f5f5f)),
            btn('.', const Color(0xff5f5f5f)),
            btn('=', const Color(0xffff9500))
          ])
        ],
      ),
    );
  }


  void calculation(btnText)
  {
    if(btnText == 'C'){
      text = '0';

      numOne =0;
      numTwo = 0;

      result = '';
      finalResult = '';
      opr = '';
      preOpr = '';
    }else if(opr=='='||preOpr=='='){

    }
    else if(btnText=='+'||btnText=='-'||btnText=='*'||btnText=='/'||btnText=='='){


    } else {
      result = result + btnText;
      finalResult = result;
    }
    setState(() {
      text = finalResult;
    });
  }


}
