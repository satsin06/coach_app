import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();

}

class _GalleryState extends State<Gallery> {
  File? image;

  Future cameraImage() async {
    final image = await ImagePicker().pickImage(
        source: ImageSource.camera
    );
    if (image == null) return;
    final imagePermanent = await saveImagePermanently(image.path);

    setState(() {
      this.image = imagePermanent;
    });
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imagePermanent = await saveImagePermanently(image.path);
      setState(() {
        this.image = imagePermanent;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        pickImage();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      cameraImage();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset("assets/appbar.png",
          height: 25,
          fit: BoxFit.cover,),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      padding: EdgeInsets.only(left: 40),
                      child: Center(
                        child: Text("GALERÍA",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              image != null ? Image.file(image!, width: 300, height: 300,) : Container(height: 300, width: 300, child: Center(child: Text('No photo found')),),
              Spacer(),
              InkWell(
                onTap: () => _showPicker(context),
                child: Column(
                  children: [
                    Icon(Icons.camera_enhance_rounded, size: 60,),
                    Text("Subir Foto",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
