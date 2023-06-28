import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wether_app/shared/cubit/state.dart';

import '../../model/wether_model.dart';

class appbloc extends Cubit<appstate>{

  appbloc(): super (inithalstate());
  static appbloc  get(context)=> BlocProvider.of(context);
  Color colo =Colors.white;
  wetherdatamodel? weth ;
  Response? response;
  Future<wetherdatamodel?> getdata(String ctyname) async{

    String url ='http://api.weatherapi.com/v1/forecast.json?key=http://api.weatherapi.com/v1/forecast.json?key=9cd5b928e11b45399c690513232806&q=cairo&days=1&aqi=no&alerts=no&q=cairo&days=1&aqi=no&alerts=no';

     response =await Dio().get(url).then((value) {
      weth= wetherdatamodel.fromjson(value.data);

      print(value.data);
      print('${weth!.model1!.name}   ppppp');
      print('${weth!.model2!.tex!}   ppppp');

      print('${weth!.model2!.icon!}   ppppp');

    });

     emit(ap());

  }
bool isdark=false ;
  changemode(){

    isdark=!isdark ;
    emit(chandemodestate());
  }


}