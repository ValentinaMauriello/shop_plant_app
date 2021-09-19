import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shop_app_plant/accedi/login.dart';
import 'package:shop_app_plant/constants.dart';
import 'package:shop_app_plant/screen/explorer_screen.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/logoplant.png'),
            Spacer(flex: 3),
            Text('Welcome to shoPlant',
            textAlign: TextAlign.center,
            style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 3,),
            ElevatedButton(
              onPressed: ()=> Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => ExplorerScreen())
                    ), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text('Inizia'),
                  )
                ],
              ),               
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
             children: [
              Text(
              'Hai già un account?', 
              textAlign: TextAlign.center,
              style: 
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
            FittedBox(
              child: TextButton(
                onPressed: ()=> Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => LoginPage())
                    ), 
                child: 
                      Text('Accedi',
                      style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(
                        color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color!
                        .withOpacity(0.8)
                      )),                                      
              )
            )
            ],
            ),
            )
            
          ],
        ), 
      ),
    );
  }
}