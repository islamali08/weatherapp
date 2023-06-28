import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wether_app/shared/cubit/bloc.dart';
import 'package:wether_app/shared/cubit/state.dart';

import 'modules/detailscreen.dart';
import 'modules/first_screen.dart';

main(){

  runApp(witherapp());

}

class witherapp extends StatelessWidget {
  const witherapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(


      create: (BuildContext context) =>appbloc()..changemode(),
      child: BlocConsumer<appbloc,appstate>(
        listener: (BuildContext context, Object? state) {  },


        builder: (BuildContext context, state) {
          return MaterialApp(
            themeMode:appbloc.get(context).isdark==false? ThemeMode.light:ThemeMode.light ,
            theme: ThemeData(
                brightness:appbloc.get(context).isdark==false? Brightness.light:Brightness.dark,
              primarySwatch: Colors.blue
              // appBarTheme: AppBarTheme(
              //     backgroundColor: Colors.purple,
              //     elevation: 0.0,
              //     iconTheme: const IconThemeData(
              //       color: Colors.black,
              //     )),
              // scaffoldBackgroundColor: Colors.white,
              // iconTheme: IconThemeData(
              //   color: Colors.yellow,
              // ),
              // floatingActionButtonTheme: FloatingActionButtonThemeData(
              //   backgroundColor: Colors.orange,
              // ),
              // textTheme: const TextTheme(
              //     bodyText1: TextStyle(
              //         color: Colors.black,
              //         fontSize: 14,
              //         fontWeight: FontWeight.w600),
              //     bodyText2: TextStyle(
              //       fontSize: 20,
              //       color: Colors.black,
              //     ),
              //     headline1: TextStyle(color: Colors.grey, fontSize: 20),
              //     headline2: TextStyle(color: Colors.black, fontSize: 30)),
              // bottomNavigationBarTheme: BottomNavigationBarThemeData(
              //   backgroundColor: Colors.pink,
              //   unselectedItemColor: Colors.white,
              // ),
            ),
            darkTheme: ThemeData(
                // appBarTheme: const AppBarTheme(
                //     backgroundColor: Colors.black,
                //     elevation: 0.0,
                //     iconTheme: const IconThemeData(
                //       color: Colors.white,
                //     )),
                // scaffoldBackgroundColor: Colors.black,
                // iconTheme: const IconThemeData(
                //   color: Colors.white,
                // ),
                // floatingActionButtonTheme: const FloatingActionButtonThemeData(
                //   backgroundColor: Colors.black,
                // ),
                // textTheme: const TextTheme(
                //     bodyText1: TextStyle(
                //         color: Colors.white,
                //         fontSize: 14,
                //         fontWeight: FontWeight.w600),
                //     bodyText2: TextStyle(
                //       fontSize: 20,
                //       color: Colors.white,
                //     ),
                //     headline1: TextStyle(color: Colors.grey, fontSize: 20),
                //     headline2: TextStyle(color: Colors.white, fontSize: 30)),
                // bottomNavigationBarTheme: BottomNavigationBarThemeData(
                //   backgroundColor: Colors.black,
                //   unselectedItemColor: Colors.white,
                //
                // )
            ),
            debugShowCheckedModeBanner: false,
            home: firstscreen(),

          );
        },

      ),
    );
  }
}
