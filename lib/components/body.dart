
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app_plant/components/title_with_more.dart';
import 'package:shop_app_plant/constants.dart';
import 'header_with_searchbox.dart';

class Body extends  StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton( title: 'Consigliati',),
          Container(
            width: size.width*40,
          )
        ],
      ),
    );
  }
}

