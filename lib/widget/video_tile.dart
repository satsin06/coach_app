import 'package:coach_app/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class VideoTile extends StatelessWidget {
  const VideoTile({Key? key,
    this.ytid = "",
    this.text = "",
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
  }) : super(key: key);
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String ytid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            CustomIcons.back_return,
            color: Colors.black,
          ),
        ),
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
              cardColor: Colors.blue,
            ),
            child: PopupMenuButton(
              itemBuilder: (context) {
                return List.generate(2, (index) {
                  return PopupMenuItem(
                    child: Text(
                      'button no $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                });
              },
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        title: Text("Donkey kicks",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black
          ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Divider(thickness: 2,),
                YoutubePlayer(
                  width: MediaQuery.of(context).size.width,
                  controller: YoutubePlayerController(
                    initialVideoId: ytid, //Add videoID.
                    flags: YoutubePlayerFlags(
                      hideControls: false,
                      controlsVisibleAtStart: true,
                      autoPlay: false,
                      mute: false,
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blue,
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          //padding: EdgeInsets.fromLTRB(0, 0, 155, 0),
                          child: Text("Ver descripción del vídeo",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          //padding: EdgeInsets.fromLTRB(0, 0, 195, 0),
                          child: Text(text,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,

                            ),
                          ),
                        ),
                        //SizedBox(height: 10,),
                        Container(
                          //padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                          child: Text(text1,
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        //SizedBox(height: 10,),
                        Container(
                          //padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                          child: Text(text2,
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        //SizedBox(height: 10,),
                        Container(
                          //padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                          child: Text(text3,
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        )
                      ]
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(15)),
                              side: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              )),
                          child: Text(
                            "COMPLETADO",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.normal),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}