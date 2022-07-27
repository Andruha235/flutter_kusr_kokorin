import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _headerImage(),
        SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _weatherDescription(),
                  Divider(),
                  _temperature(),
                  Divider(),
                  _temperatureForecast(),
                  Divider(),
                  _footerRaitings(),
                ],
              ),
            )),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: AssetImage('assets/images/1646999942_5.jpg'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Tuesday - May 22',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
        'Сегодня- +20..+25°; слабый дождь начнётся около 23-00; штиль. На этой неделе почти без осадков; похолодает до +23°; слабый ветер до 4 м/с',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.wb_sunny, color: Colors.yellow,),
        ],
      ),
      SizedBox(width: 16,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('15° Солнечно', style: TextStyle(color: Colors.deepPurple),),
            ],
          ),
          Row(
            children: [
              Text('Москва, обручевский район', style: TextStyle(color: Colors.grey),),
            ],
          )
        ],
      )
    ],
  );
}

Wrap _temperatureForecast(){
  return Wrap(
    spacing: 10,
    children:
      List.generate(7, (int index){
        return Chip(
            label: Text(
              '${index + 20}°C',
              style: TextStyle(fontSize: 15),
            ),
          avatar: Icon(
            Icons.wb_cloudy,
            color: Colors.blue.shade300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade100,
        );
      }),
  );
}


Row _footerRaitings() {
  var stars = Row(
    children: [
      Icon(Icons.star, size: 15,color: Colors.yellow[600],),
      Icon(Icons.star, size: 15,color: Colors.yellow[600],),
      Icon(Icons.star, size: 15,color: Colors.yellow[600],),
      Icon(Icons.star, size: 15,color: Colors.black,),
      Icon(Icons.star, size: 15,color: Colors.black,),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('Info with yandex.ru/pogoda',style: TextStyle(fontSize: 15),),
      stars
    ],
  );
}