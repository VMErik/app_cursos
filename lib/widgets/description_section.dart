import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  
  DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top : 20
      ),
      child: Column(
        children: [
          Text('Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo "Contenido aquí, contenido aquí". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de "Lorem Ipsum" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo', 
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.6),
          ),),
          SizedBox(height: 20,),
          Row(
            children: [
              Icon(Icons.timer , color: Colors.blueAccent.shade400,),
              SizedBox(height: 20,),
              Text('Total Duration  : 26 Hours', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),
          Row(
            children: [
              Icon(Icons.star , color: Colors.amber.shade400,),
              SizedBox(height: 20,),
              Text('4.5', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),)
            ],
          )

        ],
      ),
    );
  }
}