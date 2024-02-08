import 'package:flutter/material.dart';

class VideoSection extends StatefulWidget {
  String course;
  VideoSection(this.course);

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  @override
  Widget build(BuildContext context) {
    List videoList = [
      'Introduccion a ${widget.course}',
      'Instalando ${widget.course} en Windows',
      'Configurando ${widget.course} en Windows',
      'Creando nuestra primera APP en  ${widget.course}'
    ];

    return ListView.builder(
        itemCount: videoList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: index == 0
                      ? Colors.blueAccent.shade400
                      : Colors.blueAccent.shade400.withOpacity(0.6),
                  shape: BoxShape.circle),
              child:
                  Icon(Icons.play_arrow_rounded, color: Colors.white, size: 30),
            ),
            title: Text(videoList[index]),
            subtitle: Text('20 min - 50 Sec'),
          );
        });
  }
}
