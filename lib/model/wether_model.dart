
class wetherdatamodel{
  wethermodel? model1 ;
  wethermodel? model2 ;
  wethermodel? model3 ;



  wetherdatamodel.fromjson(Map<String,dynamic> json){

    model1 = wethermodel.fromjson(json['location']);
    model2 = wethermodel.fromjson(json['forecast']['forecastday'][0]['day']['condition']);
    model3 = wethermodel.fromjson(json['forecast']['forecastday'][0]['day']);



  }

}




class wethermodel {

  String? name ;
   double?maxtemp ;
  double?mintemp ;
  double?avrtemp ;


  String? tex ;
   String? icon ;
  wethermodel.fromjson(Map<String,dynamic> json){
    name = json['name'];
    maxtemp=json['maxtemp_c'];
    tex=json['text'];
    icon=json['icon'];
    mintemp=json['mintemp_c'];
    avrtemp=json['avgtemp_c'];



  }
}