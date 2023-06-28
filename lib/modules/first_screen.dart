import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wether_app/modules/search_screen.dart';
import 'package:wether_app/shared/cubit/bloc.dart';
import 'package:wether_app/shared/cubit/state.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) =>appbloc(),


      child: BlocConsumer<appbloc,appstate>(
        listener: (BuildContext context, Object? state) {  },


        builder: (BuildContext context, state) {

          return Scaffold(
            appBar: AppBar(
              title: Text('weather'),
              actions: [

                IconButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return searchscreen() ;
                      }));
                }, icon: Icon(Icons.search_rounded))
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('there is no weather start '),
                  Text(' searching now'),
                ],
              ),
            ),
          ) ;
        },

      ),
    );
  }
}
