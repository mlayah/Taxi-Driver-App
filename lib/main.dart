import 'package:flutter/material.dart';
import 'package:ui_earnings/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Earnings Demo',
      theme: ThemeData(       
       
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      backgroundColor: BgColor,      
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 36),
                decoration: BoxDecoration(
                  color: BgMainCard,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [BoxShadow(
                    blurRadius: 5.0,
                    color: BgMainBlur,
                    spreadRadius: 5.0,
                  )]
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20.0,),
                    _customAppBar(),
                     SizedBox(height: 30,),
                     Text(
                       'This Week',
                       style: TextStyle(
                         color: OrangeColor,
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                     SizedBox(height: 8.0,),
                     Text(
                       '340.56',
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                         color: Colors.black,
                         fontSize: 34,
                       ),
                     ),
                     SizedBox(height: 40,),
                     Container(
                       decoration: BoxDecoration(
                         color: BgMiniCard,
                         borderRadius: BorderRadius.circular(16),
                         boxShadow: [
                           BoxShadow(
                             blurRadius: 3.0,
                             color: BgMiniBlur,
                             spreadRadius: 4.0,
                           )
                         ]
                       ),
                       child: Column(
                         children: <Widget>[
                          _miniListTile('Earing Details','Aug 10-17',Icons.done_all),

                          Divider(color: Colors.grey[200],),
                          _miniListTile('Recent Transactions', '49.00', Icons.timelapse),

                          Divider(color: Colors.grey[200],),
                          _miniListTile('Promotions', 'See whats available', Icons.card_giftcard),
                         ],
                       ),
                     
                     ),
                    SizedBox(height:20),
                     _miniListTile('Refer & Earn',
                      'Get paid for referring \nnew drivers to zone', 
                      Icons.account_balance_wallet),

                   
                  ],
                ),
              ),

              SizedBox(height: 20.0,),
              _lightListTile(),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
     
      bottomNavigationBar: FixedBottomBar(),
    );
  }

  Widget _customAppBar(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0,
          highlightElevation: 1,
          backgroundColor: Colors.orange[50].withOpacity(0.5),
          ),

          Text(
            'My Earnings',
            style: TextStyle(
              fontSize: 26,fontWeight: FontWeight.w400,color: Colors.black87
            ),
          ),
           FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.help_outline,
            color: Colors.black,
          ),
          elevation: 0,
          highlightElevation: 1,
          backgroundColor: Colors.orange[50].withOpacity(0.5),
          ),
      ],
    );
  }

  Padding _lightListTile(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14,horizontal: 12),
      child: ListTile(
        leading: Icon(
          Icons.alarm,
          color: Colors.grey[50],
          size: 28,
        ),

        title: Text(
          'Schedule Payment',
          style: TextStyle( fontSize: 18,fontWeight: FontWeight.w400,color: Colors.grey[50]),
        ),
        subtitle: Text(
           'Set a payment \nSchedule',
           style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.blueGrey[50]),
         ),

         trailing: FloatingActionButton(
           onPressed: () {
             //TODO
           },
           elevation: 2.0,
           backgroundColor: Colors.white70,
           child: Icon(
             Icons.arrow_forward,
             color: Colors.black,
             size: 26,
           ),
         ),
      ),
    );
  }

  Padding _miniListTile(_title,_subtitle,_icon){

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14,horizontal: 12),
      child: ListTile(
        leading: Icon(
          _icon,
          color: Colors.grey[350],
          size: 28,
        ),

        title: Text(
          _title,
          style: TextStyle( fontSize: 18,fontWeight: FontWeight.w400),
        ),
        subtitle: Text(
           _subtitle,
           style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.grey[350]),
         ),

         trailing: FloatingActionButton(
           onPressed: () {
             //TODO
           },
           elevation: 2.0,
           backgroundColor: Colors.white,
           child: Icon(
             Icons.arrow_forward,
             color: Colors.black,
             size: 26,
           ),
         ),
      ),
    );
  }

}

class FixedBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
      child: MaterialButton(
        height: 50,
        onPressed: () {
          //TODO
        },
        child: Text(
          'Cash Out',
          style: TextStyle(
            letterSpacing: 1.5,
            fontSize: 14,
          ),
        ),

        textColor: Color.fromRGBO(32, 55, 81, 1),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      
    );
  }
}