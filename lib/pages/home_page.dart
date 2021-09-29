import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Storm"),
              background: Image(image: AssetImage("assets/images/love1.jpg"),fit: BoxFit.cover,),
            ),

          ),

          SliverList(
            delegate: SliverChildListDelegate(_buildList(24)),
          )

        ],
      ),

    );
  }

  List<Widget> _buildList(int count){
    List<Widget> itemlist = [];
    for(int i = 0; i < count;i++){
      itemlist.add(_item(i));
    }
    return itemlist;
  }

  Widget _item(int n){

    return Container(
      height: 50,
      child: Center(
        child: Text("Item ${n.toString()}"),
      ),
    );

  }

}
