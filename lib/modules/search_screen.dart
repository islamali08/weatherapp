import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detailscreen.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({Key? key}) : super(key: key);

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {

  TextEditingController ctyname =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search city'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 100
        ),
        child: TextFormField(
          controller: ctyname,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 30),
            suffixIcon: IconButton(onPressed: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return detal_screen(ctyname.text);
                  }));
            }, icon: Icon(Icons.search_rounded)),
               hintText: ' inter city name',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
                    width: 2
              )

            )
          ),
        ),
      ),
    );
  }
}
