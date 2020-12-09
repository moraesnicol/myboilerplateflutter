import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/controllers/authentications.dart';
import 'package:provider/provider.dart';
//import 'rhabdo.dart';

class Viroses extends StatelessWidget {
  Viroses({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      child: ListView(
      
  children: <Widget>[
    Image.asset('assets/images/virom.png'),

      //CARDS//

        Container(
          padding: EdgeInsets.only(left: 55.0, right: 55.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Color(0xFF7C1912),
                    child: InkWell(
                splashColor: Colors.red[900],
                onTap: () {
    //              Navigator.push(
   // context,
   // MaterialPageRoute(builder: (context) => Rhabdo()),
  //);
                },
                child: Container(
                  height: 100,
                  child: Row(children: <Widget>[
                    Flexible(
                      child: 
                      Image.asset('images/rhabdov.png',
                      width:100,
                  height:100,),
                      ),
                    
                    Flexible(
                      child: 
                      Text('RHABDOVIRIDAE',
                      textAlign: TextAlign.center,
                    style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                        fontSize: 20.0, 
                         color: Colors.white,),
                    ),
                      ),
                    )
                  ],
                  ),
                ),
              ),
          ),
        ),
      


      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(
                    child: 
                    Image.asset('images/flaviviridae.png',
                   width:100,
                  height:90,),
                    ),
                  
                  Flexible(
                    child: 
                    Text('FLAVIVIRIDAE',
                  textAlign: TextAlign.center,
                  style:  GoogleFonts.anton(
                    textStyle: TextStyle(
                      fontSize: 20.0, 
                       color: Colors.white,),
                  ),
                    ), 
                  )   
                ],
                ),
              ),
            ),
        ),
      ),


      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(child: 
                  Image.asset('images/coronav.png',
                  width:100,
                  height:90,
                  ),
                  ),
                  Flexible(
                    child: Text('CORONAVIRIDAE',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),
                     
                ],
                ),
              
            ),
        ),
        ),
      ),


      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
               
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(child: 
                  Image.asset('images/reoviridae.png',
                  width:100,
                  height:90,),
                  ),
                  Flexible(
                    child: Text('REOVIRIDAE',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),   
                ],
                ),
              ),
            ),
        ),
      ),


      RaisedButton(
        onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text("Sign out"),
            ),
              Container(
          padding: EdgeInsets.only(left: 55.0, right: 55.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Color(0xFF7C1912),
                    child: InkWell(
                splashColor: Colors.red[900],
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  
                  height: 100,
                  child: Row(children: <Widget>[
                    Flexible(child: 
                    Image.asset('images/parvovirus.png',
                    width:100,
                    height:90,),
                    ),
                    Flexible(
                      child: Text('PARVOVIRIDAE',
                        style:  GoogleFonts.anton(
                        textStyle: TextStyle(
                        fontSize: 20.0, 
                        color: Colors.white,
                         ),
                        ),
                      ), 
                    ),   
                  ],
                  ),
                ),
              ),
          ),
        ),



  
      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(
                  child: 
                  Image.asset('images/paramyx.png',
                  width:100,
                  height:90,),
                  ),

                  Flexible(
                    child: Text('PARAMYXOVIRIDAE',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 19.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),    
                ],
                ),
              ),
            ),
        ),
      ),


      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
              
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(
                  child: 
                  Image.asset('images/orthomyx.png',
                  width:100,
                  height:90,),
                  ),

                  Flexible(
                    child: Text('ORTHOMYXOVIRIDAE',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 18.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),     
                ],
                ),
              ),
            ),
        ),
      ),



      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(
                  child: 
                  Image.asset('images/picornav.png',
                  width:100,
                  height:90,),
                  ),

                  Flexible(
                    child: Text('PICORNAVIRIDAE',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),     
                ],
                ),
              ),
            ),
        ),
      ),



      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(
                  child: 
                  Image.asset('images/papiloma.png',
                  width:100,
                  height:90,),
                  ),

                  Flexible(
                    child: Text('PAPILOMAVIRIDAE',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),    
                ],
                ),
              ),
            ),
        ),
      ),


      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(
                  child: 
                  Image.asset('images/poxv.png',
                  width:100,
                  height:90,),
                  ),

                  Flexible(
                    child: Text('POXVIRIDAE',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),   
                ],
                ),
              ),
            ),
        ),
      ),


      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(
                  child: 
                  Image.asset('images/herpesv.png',
                  width:100,
                  height:90,),
                  ),

                  Flexible(
                    child: Text('HERPESVIRIDAE',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),     
                ],
                ),
              ),
            ),
        ),
      ),


      Container(
        padding: EdgeInsets.only(left: 55.0, right: 55.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
          color: Color(0xFF7C1912),
                  child: InkWell(
              splashColor: Colors.red[900],
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                
                height: 100,
                child: Row(children: <Widget>[
                  Flexible(
                  child: 
                  Image.asset('images/retrov.png',
                  width:100,
                  height:90,),
                  ),

                  Flexible(
                    child: Text('',
                      style:  GoogleFonts.anton(
                      textStyle: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,
                       ),
                      ),
                    ), 
                  ),    
                ],
                ),
              ),
            ),
        ),
      ),
      //FIM DOS CARDS//
  
  ],
),
    );
    
  }
}