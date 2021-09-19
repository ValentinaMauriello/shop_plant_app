
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
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding/2,
              bottom: kDefaultPadding * 2.5,
            ),
            width: size.width*40,
            child: Column(
              children: [
                Image.asset('assets/images/image_1.png'),
                Container(
                  padding : EdgeInsets.all(kDefaultPadding/2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Samantha".toUpperCase(),
                              style: Theme.of(context).textTheme.button,)
                              ],
                        )
                      )
                    ],
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}

