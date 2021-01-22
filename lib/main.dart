
import 'package:flutter/material.dart';

void main(){
  return runApp(Calculator());
}
String input='',value='',resultFinal='';
int value1,value2,result,pressEqual=0,presskey=0,operator=0,activity=0;
double dresult;
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(fontFamily: 'LibreBaskerville'),



        home: Scaffold(

            appBar: AppBar(

              centerTitle: true,
              backgroundColor: Colors.black,

              title: Text('Calculator',
              style: TextStyle(
                fontSize: 36.0,

              ),

              )

            ),

          body: Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              Expanded(
                child: Row(

                  children: <Widget>[
                    Expanded(

                      flex: 2,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.end,

                        children: <Widget>[
                          Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                  input,
                                  style: TextStyle(fontSize: 38.0) ),
                              Text(
                                  resultFinal,
                              style: TextStyle(fontSize: 38.0) ),
                            ],
                          ),
                        ],

                      ),
                    )],
                ),
              ),

              Expanded(
                child: Row(

                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                         setState(() {

                           if(input.length==16){
                             input='';
                             operator=0;
                             resultFinal='';
                             value2=null;
                             value1=null;
                             value='';
                             pressEqual=0;
                             presskey=0;

                           }

                           presskey=1;
                           print('Press 1');
                           input=input+'1';
                           value=value+'1';
                           print('Input is $input');
                           print('Value is $value');
                         });
                        },
                        child: Container(

                        child: Text( '1',style: TextStyle(fontSize: 36,
                            color: Colors.white),),

                        color: Colors.blue,
                          alignment: Alignment.center,
                  ),
                      ),
                    ),
                    Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: (){
                        setState(() {

                          if(input.length==16){
                            input='';
                            operator=0;
                            resultFinal='';
                            value2=null;
                            value1=null;
                            value='';
                            pressEqual=0;
                            presskey=0;

                          }
                          presskey=1;
                          print('Press 2');
                          input=input+'2';
                          value=value+'2';
                          print('Input is $input');
                          print('Value is $value');
                        });

                      },
                      child: Container(

                        child: Text( '2',style: TextStyle(fontSize: 36,
                            color: Colors.white),),

                        color: Colors.yellow,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                    Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: (){

                        setState(() {
                          if(input.length==16){
                            input='';
                            operator=0;
                            resultFinal='';
                            value2=null;
                            value1=null;
                            value='';
                            pressEqual=0;
                            presskey=0;

                          }
                          presskey=1;
                          print('Press 3');
                          input=input+'3';
                          value=value+'3';
                          print('Input is $input');
                          print('Value is $value');
                        });
                      },
                      child: Container(

                        child: Text( '3',style: TextStyle(fontSize: 36,
                            color: Colors.white),),

                        color: Colors.blue,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                    Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          if(input.length==16){
                            input='';
                            operator=0;
                            resultFinal='';
                            value2=null;
                            value1=null;
                            value='';
                            pressEqual=0;
                            presskey=0;

                          }

                          activity=1;
                          if(pressEqual==1 && value2!=null){
                            input='';
                            value='';
                            operator=0;
                            pressEqual=0;
                            presskey=0;
                            resultFinal='';
                            value2=null;

                          }
                        if(presskey==1 && operator==0){
                          input=input +'+';
                          value1=int.parse(value);
                          value='';

                          print('Value1 is $value1');



                        }
                        });
                      },
                      child: Container(

                        child: Text( '+',style: TextStyle(fontSize: 36,
                            color: Colors.white),),

                        color: Colors.yellow,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  ],

                ),
              ),

              Expanded(

                flex: 1,
                child: Row(

                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){

                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }

                            presskey=1;
                            print('Press 4');
                            input=input+'4';
                            value=value+'4';
                            print('Input is $input');
                            print('Value is $value');
                          });
                        },
                        child: Container(

                          child: Text( '4',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.yellow,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          if(input.length==16){
                            input='';
                            operator=0;
                            resultFinal='';
                            value2=null;
                            value1=null;
                            value='';
                            pressEqual=0;
                            presskey=0;

                          }

                          setState(() {
                            presskey=1;
                            print('Press 5');
                            input=input+'5';
                            value=value+'5';
                            print('Input is $input');
                            print('Value is $value');
                          });
                        },
                        child: Container(

                          child: Text( '5',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }
                            presskey=1;
                            print('Press 6');
                            input=input+'6';
                            value=value+'6';
                            print('Input is $input');
                            print('Value is $value');
                          });
                        },
                        child: Container(

                          child: Text( '6',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.yellow,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }

                            activity=2;
                            if(pressEqual==1 && value2!=null){
                              input='';
                              value='';
                              operator=0;
                              pressEqual=0;
                              presskey=0;
                              resultFinal='';
                              value2=null;

                            }
                            if(presskey==1 && operator==0){
                              input=input +'-';
                              value1=int.parse(value);
                              value='';

                              print('Value1 is $value1');



                            }
                          });
                        },


                        child: Container(

                          child: Icon(Icons.remove,color: Colors.white,size: 24.0),

                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),

                    ],
                ),
              ),
              Expanded(
                child: Row(

                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }

                            presskey=1;
                            print('Press 7');
                            input=input+'7';
                            value=value+'7';
                            print('Input is $input');
                            print('Value is $value');
                          });
                        },
                        child: Container(

                          child: Text( '7',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }

                            presskey=1;
                            print('Press 8');
                            input=input+'8';
                            value=value+'8';
                            print('Input is $input');
                            print('Value is $value');
                          });
                        },
                        child: Container(

                          child: Text( '8',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.yellow,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }

                            presskey=1;
                            print('Press 9');
                            input=input+'9';
                            value=value+'9';
                            print('Input is $input');
                            print('Value is $value');
                          });
                        },
                        child: Container(

                          child: Text( '9',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }

                            activity=3;
                            if(pressEqual==1 && value2!=null){
                              input='';
                              value='';
                              operator=0;
                              pressEqual=0;
                              presskey=0;
                              resultFinal='';
                              value2=null;

                            }
                            if(presskey==1 && operator==0){
                              input=input +'x';
                              value1=int.parse(value);
                              value='';

                              print('Value1 is $value1');



                            }
                          });
                        },
                        child: Container(

                          child: Text( 'x',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.yellow,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],

                ),
              ),

              Expanded(

                flex: 1,
                child: Row(

                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }
                            presskey=1;
                            print('Press 0');
                            input=input+'0';
                            value=value+'0';
                            print('Input is $input');
                            print('Value is $value');
                          });
                        },
                        child: Container(

                          child: Text( '0',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.yellow,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            input='';
                            value='';
                            operator=0;
                            pressEqual=0;
                            presskey=0;
                            resultFinal='';
                            value2=null;
                          });
                        },
                        child: Container(

                          child: Text( 'c',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {

                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }
                            pressEqual=1;

                            value2=int.parse(value);
                            print('Value 2 is $value2');
                            if(activity==1){
                              result = value1 + value2;
                              resultFinal= '=' +result.toString();

                              print('Result is $result');
                            }
                            if(activity==2){
                              result = value1 - value2;
                              resultFinal= '=' +result.toString();

                              print('Result is $result');
                            }
                            if(activity==3){
                              result = value1 * value2;
                              resultFinal= '=' +result.toString();

                              print('Result is $result');
                            }
                            if(activity==4){
                              if(value2==0){
                                resultFinal= '= Infinity';
                              }
                              if(value2!=0){
                                dresult = value1 / value2;
                                resultFinal= '=' +dresult.toStringAsFixed(2);

                                print('Result is $result');
                              }

                            }



                          });

                        },
                        child: Container(

                          child: Text( '=',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.yellow,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(input.length==16){
                              input='';
                              operator=0;
                              resultFinal='';
                              value2=null;
                              value1=null;
                              value='';
                              pressEqual=0;
                              presskey=0;

                            }

                            activity=4;
                            if(pressEqual==1 && value2!=null){
                              input='';
                              value='';
                              operator=0;
                              pressEqual=0;
                              presskey=0;
                              resultFinal='';
                              value2=null;

                            }
                            if(presskey==1 && operator==0){
                              input=input +'/';
                              value1=int.parse(value);
                              value='';

                              print('Value1 is $value1');



                            }
                          });
                        },
                        child: Container(

                          child: Text( '/',style: TextStyle(fontSize: 36,
                              color: Colors.white),),

                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),

                  ],
                ),
              ),


            ],

          ),

        )
    );
  }
}