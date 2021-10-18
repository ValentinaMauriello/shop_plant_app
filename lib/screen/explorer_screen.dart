

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_plant/components/body.dart';

class ExplorerScreen extends StatelessWidget {
  const ExplorerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      body: Body(),
      
    );
  }
}


  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: (){}, 
        icon: SvgPicture.asset("assets/icons/menu.svg")),
    );
  }

/*class ExplorerScreen extends  StatefulWidget {
  const ExplorerScreen({Key? key}) : super(key: key);

  @override
  _ExplorerScreenState createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      body: Body(),

      bottomNavigationBar: buildBottomNav(),
    );
  }

//metodi usati: 

  BottomNavigationBar buildBottomNav() {
    return BottomNavigationBar(
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.grey,

      currentIndex: _selectedIndex,

      onTap: (_index){
        setState(() {
          _selectedIndex =_index;
        });
      },
      items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          ),
        
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
          label: 'Preferiti',
          ),

          BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          label: 'Search'),
        
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Carrello'),
        

      ] 
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: (){}, 
        icon: SvgPicture.asset("assets/icons/menu.svg")),
    );
  }
}*/
