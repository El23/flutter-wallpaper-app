import 'package:flutter/material.dart';
import 'package:wallpaper_app/model/wallpaper_model.dart';
import 'package:wallpaper_app/views/image_view.dart';

Widget brandName() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      children: <TextSpan>[
        TextSpan(text: "Wallpapers", style: TextStyle(color: Colors.black38)),
        TextSpan(text: "gallery", style: TextStyle(color: Colors.blue)),
      ],
    ),
  );
}

Widget wallList({List<WallpaperModel> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpaper) {
        return GridTile(
            child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ImageView(imgUrl: wallpaper.scr.portrait,)));
          },
          child: Hero(
            tag: wallpaper.scr.portrait,
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    wallpaper.scr.portrait,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ));
      }).toList(),
    ),
  );
}
