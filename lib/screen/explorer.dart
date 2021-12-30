import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ExplorerPage extends StatefulWidget {
  ExplorerPage({Key? key}) : super(key: key);

  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: ListView(
            padding: EdgeInsets.symmetric(vertical: 60.0),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.image,
                      size: 30.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Top Picks',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}