import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  FirebaseStorage storage = FirebaseStorage.instance;

  Future<void> _upload(String inputSource) async {
    final picker = ImagePicker();
    PickedFile? pickedImage;
    try {
      pickedImage = (await picker.pickImage(
          source: ImageSource.camera, maxWidth: 1920)) as PickedFile?;

      final String fileName = path.basename(pickedImage!.path);
      File imageFile = File(pickedImage.path);

      try {
        await storage.ref(fileName).putFile(
            imageFile,
            SettableMetadata(customMetadata: {
              'uploaded_by': 'A bad guy',
              'description': 'Some description...'
            }));

        setState(() {});
      } on FirebaseException catch (error) {
        print(error);
      }
    } catch (err) {
      print(err);
    }
  }

  Future<List<Map<String, dynamic>>> _loadImages() async {
    List<Map<String, dynamic>> files = [];

    final ListResult result = await storage.ref().list();
    final List<Reference> allFiles = result.items;

    await Future.forEach<Reference>(allFiles, (file) async {
      final String fileUrl = await file.getDownloadURL();
      final FullMetadata fileMeta = await file.getMetadata();
      files.add({
        "url": fileUrl,
        "path": file.fullPath,
      });
    });

    return files;
  }

  Future<void> _delete(String ref) async {
    await storage.ref(ref).delete();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Text(
                    'COACH APP',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w100,
                        color: Colors.black,
                        fontFamily: 'GeometricSlab'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(27, 13, 0, 0),
                    child: Icon(
                      CustomIcons.name,
                      color: Color(0xff79dd72),
                      size: 6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(88, 5, 0, 0),
                    child: Icon(
                      CustomIcons.flash,
                      color: Color(0xff79dd72),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ],
          )),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                    child: Center(
                      child: Text(
                        "GALERÍA",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container()
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 25,
              child: RichText(
                  text: TextSpan(
                      text: 'CHECA TU ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                      children: [
                    TextSpan(
                      text: 'PROGRESO',
                      style: TextStyle(
                          color: Color(0xff6EAD7A),
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    )
                  ])),
            ),
            // Container(
            //   padding: EdgeInsets.all(30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         color: Colors.grey,
            //         child: Column(
            //           children: [
            //             Container(
            //               color: Colors.grey,
            //               height: 250,
            //               width: 148,
            //               child: Center(
            //                 child: Text("gallery Image",
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 25,
            //                   color: Colors.white
            //                 ),),
            //               ),
            //             ),
            //             Container(
            //               child: Text("Date"),
            //             )
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 2,
            //       ),
            //       Container(
            //         width: 148,
            //         color: Colors.grey,
            //         child: Column(
            //           children: [
            //             Container(
            //               color: Colors.grey,
            //               height: 250,
            //               //width: 140,
            //               child: Center(
            //                 child: Text("gallery Image",
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: 25,
            //                       color: Colors.white
            //                   ),),
            //                ),
            //             ),
            //             Container(
            //               child: Text("Date"),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Expanded(
              child: FutureBuilder(
                future: _loadImages(),
                builder: (context,
                    AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        final Map<String, dynamic> image =
                            snapshot.data![index];

                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            dense: false,
                            leading: Image.network(image['url']),
                            trailing: IconButton(
                              onPressed: () => _delete(image['path']),
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  _upload('camera');
                },
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.camera_enhance_rounded,
                          size: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            "Subir Foto",
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
