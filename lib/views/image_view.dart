import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageView extends StatefulWidget {
  final String imgUrl;

  ImageView({@required this.imgUrl});

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgUrl,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                

                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Color(0xff1C1B1B).withOpacity(0.8),
                      ),
                     Container(
                       height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [
                            Color(0x36FFFFFF),
                            Color(0x0FFFFFFF),
                          ])),
                      child: Column(
                        children: <Widget>[
                          Text("set picture", style: TextStyle(color: Colors.white70, fontSize: 15),),
                          Text(
                            "image will be saved",
                            style: TextStyle(fontSize: 9, color: Colors.white70),
                          )
                        ],
                      ),
                    ),
          ],  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "cancel",
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

 _save() async{
    await _askPermission();
    var response = await Dio().get(
      widget.imgUrl,
      options: Options(responseType: ResponseType.bytes)
    );
    final result = await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
    print(result);
    Navigator.pop(context);
 }
  _askPermission() async{
    if(Platform.isIOS){
      Map<PermissionGroup, PermissionStatus> permission =
          await PermissionHandler().requestPermissions([PermissionGroup.photos]);
    }else{
      PermissionStatus permission = await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
    }
  }

}
