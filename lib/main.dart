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
            'Weather Forecast',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[300],
          elevation: 0,
        ),
        body: _buildBody(),
        backgroundColor: Colors.red[300],
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter City Name',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            border: InputBorder.none,
          ),
        ),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              _CityDetails(),
              Padding(padding: EdgeInsets.all(20)),
              _TemperatureDetail(),
              Padding(padding: EdgeInsets.all(20)),
              _ExtraWeatherDetail(),
              Padding(padding: EdgeInsets.all(30 )),
              Text('7-DAY WEATHER FORECAST', style: TextStyle(color: Colors.white, fontSize: 18),),
              Padding(padding: EdgeInsets.all(10)),
              _temperatureForecast(),
            ],
          ),
        ))
      ],
    ),
  );
}

Column _CityDetails() {
  return Column(
    children: [
      Text(
        'Murmansk Oblast, RU',
        style: TextStyle(fontSize: 32, color: Colors.white),
      ),
      Padding(
        padding: EdgeInsets.all(10),
      ),
      Text(
        'Friday, Mar 20, 2020',
        style: TextStyle(fontSize: 17, color: Colors.white),
      ),
    ],
  );
}

Row _TemperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.wb_sunny,
        size: 70,
        color: Colors.white,
      ),
      Padding(padding: EdgeInsets.all(5)),
      Column(
        children: [
          Text(
            '14 °F',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Text(
            'LIGHT SNOW',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    ],
  );
}

Row _ExtraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '5',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'km/hr',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
      SizedBox(
        width: 78,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '3',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
      SizedBox(
        width: 78,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '20',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    ],
  );
}

Container _temperatureForecast() {
  return Container(
    height: 110,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 150,
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Friday', style: TextStyle(color: Colors.white, fontSize: 24),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('6 °F', style: TextStyle(color: Colors.white, fontSize: 27),),
                  SizedBox(width: 8,),
                  Icon(Icons.wb_sunny, color: Colors.white, size: 35,)
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width: 150,
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Saturday', style: TextStyle(color: Colors.white, fontSize: 24),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('5 °F', style: TextStyle(color: Colors.white, fontSize: 27),),
                  SizedBox(width: 8,),
                  Icon(Icons.wb_cloudy, color: Colors.white, size: 35,)
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width: 150,
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sunday', style: TextStyle(color: Colors.white, fontSize: 24),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('22 °F', style: TextStyle(color: Colors.white, fontSize: 27),),
                  SizedBox(width: 8,),
                  Icon(Icons.wb_sunny, color: Colors.white, size: 35,)
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width: 150,
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Monday', style: TextStyle(color: Colors.white, fontSize: 24),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('13 °F', style: TextStyle(color: Colors.white, fontSize: 27),),
                  SizedBox(width: 8,),
                  Icon(Icons.wb_cloudy, color: Colors.white, size: 35,)
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width: 150,
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tuesdady', style: TextStyle(color: Colors.white, fontSize: 24),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('15 °F', style: TextStyle(color: Colors.white, fontSize: 27),),
                  SizedBox(width: 8,),
                  Icon(Icons.wb_sunny, color: Colors.white, size: 35,)
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width: 150,
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Wendnesday', style: TextStyle(color: Colors.white, fontSize: 24),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('11 °F', style: TextStyle(color: Colors.white, fontSize: 27),),
                  SizedBox(width: 8,),
                  Icon(Icons.wb_sunny, color: Colors.white, size: 35,)
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width: 150,
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Thursday', style: TextStyle(color: Colors.white, fontSize: 24),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('99 °F', style: TextStyle(color: Colors.white, fontSize: 27),),
                  SizedBox(width: 8,),
                  Icon(Icons.wb_sunny, color: Colors.white, size: 35,)
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10,),
      ],
    ),
  );
}

