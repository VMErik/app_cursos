import 'package:education_app/widgets/description_section.dart';
import 'package:education_app/widgets/video_section.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

  bool isVideoSection = true;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        // Quita el efecto de que esta elevado
        elevation: 0,
        centerTitle: true,
        // Mostramos lo que recibimos como parametro
        title: Text(widget.img,
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1)),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.notifications,
                  size: 28, color: Colors.blueAccent.shade400)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: screenSize.width,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent.withOpacity(0.05),
                  image: DecorationImage(
                      image: AssetImage('images/${widget.img}.png'))),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.blueAccent.shade400,
                    size: 45,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('${widget.img} - Curso completo',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Text('Impartido por Erik Uriel Monroy Angeles',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.7))),
            SizedBox(
              height: 5,
            ),
            Text('44 horas bajo demanda - 55 Clases en video',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5))),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration:
                  BoxDecoration(color: Colors.blueAccent.withOpacity(0.05) , borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                      color: isVideoSection == true
                          ? Colors.blueAccent.shade400
                          : Colors.blueAccent.shade400.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              isVideoSection = true;
                              print(isVideoSection);
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 35),
                            child: Text(
                              'Videos',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ))),
                  Material(
                      color: isVideoSection == true
                          ? Colors.blueAccent.shade400.withOpacity(0.6)
                          : Colors.blueAccent.shade400,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              isVideoSection = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 35),
                            child: Text(
                              'Descripcion',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          )))
                ],
              ),
            ),
            SizedBox(height: 10,),
            isVideoSection ? VideoSection(widget.img) : DescriptionSection()
          ],
        ),
      ),
    );
  }
}
