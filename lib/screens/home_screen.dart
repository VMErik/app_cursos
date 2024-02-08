import 'package:education_app/screens/course_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List categories = [
      'Categorias',
      'Clases',
      'Cursos Gratis',
      'Tienda Online',
      'Clases en Vivo',
      'Los mejores'
    ];
    List<Color> colors = [
      Colors.yellow.shade400,
      Colors.pink.shade400,
      Colors.purple.shade400,
      Colors.green.shade400,
      Colors.blue.shade400,
      Colors.orange.shade400
    ];

    List<Icon> icons = [
      Icon(Icons.category, color: Colors.white, size: 30),
      Icon(Icons.video_library, color: Colors.white, size: 30),
      Icon(Icons.assignment, color: Colors.white, size: 30),
      Icon(Icons.store, color: Colors.white, size: 30),
      Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
      Icon(Icons.emoji_events, color: Colors.white, size: 30),
    ];

    List images = ['Flutter', 'React Native', 'Python', 'C#'];

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, bottom: 10, right: 15),
            decoration: BoxDecoration(
                color: Colors.blueAccent.shade400,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              // Alinea el contenido a la izquierda
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    // Deja un espacio entre los hijos para ocupar el total del espacio
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.dashboard, size: 30, color: Colors.white),
                      Icon(Icons.notifications, size: 30, color: Colors.white)
                    ]),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text("Inicio",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: screenSize.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Busca algun curso...",
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: colors[index], shape: BoxShape.circle),
                          child: Center(
                            child: icons[index],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(categories[index],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.7)))
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cursos",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Ver todos",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent.shade400),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: images.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        // Cantidad de elementos que sevisualiaran por sistema
                        crossAxisCount: 2,
                        childAspectRatio:
                            (screenSize.height - 50 - 25) / (240 * 4),
                        // Establece espacios entre los elementos del grid
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CourseScreen(images[index])));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueAccent.withOpacity(0.05)),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                    "images/${images[index]}.png",
                                    width: 100,
                                    height: 100),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                images[index],
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "55 Videos",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.5)),
                              )
                            ],
                          ),
                        ),
                      );
                    }))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Colors.blueAccent.shade400,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
