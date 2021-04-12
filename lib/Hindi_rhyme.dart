import 'package:flutter/material.dart';
import 'package:videos_player/model/video.model.dart';
import 'package:videos_player/videos_player.dart';

class HindiRhyme extends StatefulWidget {
  @override
  _HindiRhyme createState() => _HindiRhyme();
}

class _HindiRhyme extends State<HindiRhyme> {
  List<Map<String, Object>> _list = [
    {
      'id': "2",
      'name': "Elephant Dream",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      'thumbnailUrl': "https://i.ytimg.com/vi/3aehnepCdwo/default.jpg",
    },
    {
      'id': "3",
      'name': "Big Buck Bunny",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      'thumbnailUrl': "https://i.ytimg.com/vi/3aehnepCdwo/default.jpg",
    },
    {
      'id': "4",
      'name': "For Bigger Blazes",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      'thumbnailUrl': "https://i.ytimg.com/vi/3aehnepCdwo/default.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Hindi Rhyme"), backgroundColor: Colors.redAccent[700]),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext ctx, int index) {
          return VideosPlayer(
            networkVideos: [
              NetworkVideo(
                  id: _list[index]['id'],
                  name: _list[index]['name'],
                  videoUrl: _list[index]['videoUrl'],
                  thumbnailUrl: _list[index]['thumbnailUrl']),
            ],
          );
        },
      ),
    );
  }
}
