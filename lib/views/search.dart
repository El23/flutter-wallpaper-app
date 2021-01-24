import 'package:flutter/material.dart';
import 'package:wallpaper_app/widgets/widget.dart';
class Search extends StatefulWidget {
  final String searchQuery;
  Search({this.searchQuery});
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchController = new TextEditingController();

@override
void initState(){
super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),body: Container(
      child: Column(
        children:<Widget> [

          Container(
            decoration: BoxDecoration(
                color: Color(0xfff5f8fd),
                borderRadius: BorderRadius.circular(35)),
            padding: EdgeInsets.symmetric(horizontal: 24),
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        hintText: "search", border: InputBorder.none),
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Search(

                        searchQuery: searchController.text,
                      )
                      ) );
                    },
                    child: Container(child: Icon(Icons.search))),
              ],
            ),
          ),

        ],
      ),
    ),
    );
  }
}
