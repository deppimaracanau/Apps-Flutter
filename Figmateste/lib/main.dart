import 'package:flutter/material.dart';

void main() {

}


class QuadrodeanotaesWidget extends StatefulWidget {
  @override
  _QuadrodeanotaesWidgetState createState() => _QuadrodeanotaesWidgetState();
}

class _QuadrodeanotaesWidgetState extends State<QuadrodeanotaesWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator QuadrodeanotaesWidget - COMPONENT

    return Container(
        width: 262,
        height: 404,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 10,
                  left: 10,
                  child: Text('Anotações', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 37,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                      ),
                      color : Color.fromRGBO(255, 229, 0, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Escreva algo sobre estas anotações, como o nome do projeto ou data de início', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),),

                      ],
                    ),
                  )
              ),Positioned(
                  top: 109,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                          offset: Offset(0,1),
                          blurRadius: 2
                      )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                          ),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[Text('Anotação 1', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),), SizedBox(height : 5),
                              Text('Descrição', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(97, 97, 97, 1),
                                  fontFamily: 'DM Sans',
                                  fontSize: 14,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
              ),Positioned(
                  top: 168,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                          offset: Offset(0,1),
                          blurRadius: 2
                      )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                          ),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[Text('Anotação 2', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),), SizedBox(height : 5),
                              Text('Descrição', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(97, 97, 97, 1),
                                  fontFamily: 'DM Sans',
                                  fontSize: 14,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
              ),Positioned(
                  top: 227,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                          offset: Offset(0,1),
                          blurRadius: 2
                      )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                          ),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[Text('Anotação 3', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),), SizedBox(height : 5),
                              Text('Descrição', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(97, 97, 97, 1),
                                  fontFamily: 'DM Sans',
                                  fontSize: 14,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
              ),Positioned(
                  top: 286,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                          offset: Offset(0,1),
                          blurRadius: 2
                      )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                          ),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[Text('Anotação 4', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),), SizedBox(height : 5),
                              Text('Descrição', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(97, 97, 97, 1),
                                  fontFamily: 'DM Sans',
                                  fontSize: 14,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
              ),Positioned(
                  top: 345,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                          offset: Offset(0,1),
                          blurRadius: 2
                      )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                          ),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[Text('Anotação 5', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),), SizedBox(height : 5),
                              Text('Descrição', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(97, 97, 97, 1),
                                  fontFamily: 'DM Sans',
                                  fontSize: 14,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
              ),
            ]
        )
    );
  }
}
