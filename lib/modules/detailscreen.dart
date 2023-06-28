import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/shared/cubit/bloc.dart';

import '../model/wether_model.dart';
import '../model/wether_model.dart';
import '../model/wether_model.dart';

class detal_screen extends StatefulWidget {
String? ctyname ;

detal_screen(this.ctyname);

  @override
  State<detal_screen> createState() => _detal_screenState();
}

class _detal_screenState extends State<detal_screen> {
wetherdatamodel? weth ;

Color colo =Colors.white;
  Future<wetherdatamodel?> getdata() async{

    String url ='http://api.weatherapi.com/v1/forecast.json?key=9cd5b928e11b45399c690513232806&q=${widget.ctyname}&days=1&aqi=no&alerts=no';

    Response response =await Dio().get(url);
    weth= wetherdatamodel.fromjson(response.data);
    print(response.data);
    print('${weth!.model1!.name}   ppppp');
    print('${weth!.model2!.tex!}   ppppp');
    print('${weth!.model2!.icon!}   ppppp');

    return weth ;
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
 getdata().then((value) {



});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:colo,
      appBar: AppBar(
        // backgroundColor:colo,
        title: Text('weather'),
      ),
      body:FutureBuilder<wetherdatamodel?>(
          future: getdata(),
          builder: (context,snapshot){
            return snapshot.hasData
                ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('${weth!.model1!.name!}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: NetworkImage('http:${weth!.model2!.icon}'),

                      ),
                      Text('${weth!.model3!.avrtemp}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                       Column(
                          children: [
                            Text('max ${weth!.model3!.maxtemp}'),
                            SizedBox(height: 3),
                            Text('min ${weth!.model3!.mintemp}'),
                          ],
                       )

                    ],
                  ),
                  SizedBox(height: 20),
                  Text('${weth!.model2!.tex}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),





              ],
            ),
                )
                :  snapshot.hasError
                ? Text('eror')
                : CircularProgressIndicator();
          }
      ),
    );
  }
}
