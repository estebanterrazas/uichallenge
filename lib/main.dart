import 'package:flutter/material.dart';

const backgroundColor = Color(0xff5E37DB);
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Row(
          children: <Widget>[
            SizedBox( width: 32.0, ),
            Icon( Icons.keyboard_arrow_left ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.green.withOpacity(0.3),
              ),
              child: MaterialButton(
                child: Row(
                  children: <Widget>[

                    Icon(Icons.check,
                      color: Colors.green,
                    ),
                    SizedBox( width: 12.0, ),
                    Text('Friends',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.green
        
                    ),
                    )


                  ],
                ),
                onPressed: null
                ),
            ),
          )
        ],
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          userWidget(),
          pointsWidget(),
          grapWidget(),
          friendsWidget()
        ],
      ),
    );
  }

  Widget userWidget(){
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 24.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              height: 75.0,
              width: 75.0,
              child: Image.asset('assets/perfil.jpg'),
            ), 
            
          ),
          SizedBox(width: 32.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Esteban',
               style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text('Terrazas',
              style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget pointsWidget(){
    return Padding(
      padding: const EdgeInsets.only(left:32.0, top: 24.0, right: 16.0 ),
      child: Container(

        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white
        ),
        child: CustomPaint(
          painter: PointsPainter(),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("768",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      Text("points",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.deepPurpleAccent
                      ),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Text("8500",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("points",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.deepPurpleAccent
                      )
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

  Widget grapWidget(){
    return Expanded(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32.0, top:24.0, right:16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text('Dias',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0
                ),
                ),
                SizedBox(width: 18.0),
                Text('Meses',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),),
                Expanded(

                  child: Text('vistis in mins',
                  textAlign: TextAlign.end,
                  style: 
                  TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 15.0
                  ),),
                )
              ],

            ),
          ),
          SizedBox( height: 24.0, ),
          Container(
            width: double.infinity,
            height: 150.0,
            child: Padding(
              padding: const EdgeInsets.only( left: 16.0, right: 16.0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  dayItem("23.01", 55),
                  dayItem("30.01", 58),
                  dayItem("01.02", 45),
                  dayItem("04.02", 25),
                  dayItem("06.02", 55),
                  dayItem("08.02", 45),
                  dayItem("11.02", 60),
                  dayItem("13.02", 45),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }

Widget dayItem (String day, int value){
  var barHeight = 150.0 * value / 100.0; 
  var offsetY = 150.0 - barHeight - 60.0;
  return Column(
    children: <Widget>[
      SizedBox( height: offsetY, ),
      Text(value.toString()),
      SizedBox( height: 12.0, ),
      Container(
        width: 2.0,
        height: barHeight,
        color: Colors.greenAccent,
      ),
      SizedBox( height: 12.0, ),
      Text("day", style: TextStyle(
        color: Colors.white.withOpacity(0.5)
      ), 
      )

    ],

  );
}

Widget friendsWidget(){
  return Padding(
    padding: const EdgeInsets.only(top:16.0),
    child: Container(
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Friends",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  child: Image.asset('assets/perfil.jpg'),
                ), 
                
              ),
              // SizedBox(width: 15.0,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  child: Image.asset('assets/perfil.jpg'),
                ), 
                
              ),
              // SizedBox(width: 15.0,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  child: Image.asset('assets/perfil.jpg'),
                ), 
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.yellow
                    ),
                    child: Center(
                      child: Text("12")
                      ),
                  ),
              ), 
              SizedBox(width: 32.0,),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

}
class PointsPainter extends CustomPainter{

  Paint _paint=Paint();

  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = Colors.deepPurpleAccent.withOpacity(0.20);
    // TODO: implement paint
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width / 2 , 0);
    path.lineTo(size.width / 2 - 40 , size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, _paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }


}