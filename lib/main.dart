import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Lago Nahuel Huapi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  'Argetina',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500]
          ),
          Text(
            '41'
          )
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label)
    {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'Call'),
          buildButtonColumn(Icons.map, 'Route'),
          buildButtonColumn(Icons.near_me, 'Share'),
          buildButtonColumn(Icons.beach_access, 'Enjoy'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
El lago Nahuel Huapi es un lago de origen glaciar de la Patagonia Argentina. Es compartido por las provincias argentinas del Neuquén (80 %) y de Río Negro (20 %), y rodeado mayormente por el parque nacional homónimo.

Posee una superficie de 557 km² y se sitúa a una altitud de unos 700 msnm. Se destaca por su profundidad (464 m de profundidad máxima) y sus ocho ramificaciones o brazos: Campanario, de la Tristeza, Blest, Machete, del Rincón, Última Esperanza, Angostura y Huemul. Se relaciona con otros lagos menos extensos, como el Gutiérrez (16,4 km²), el Moreno (16,4 km²), el Espejo y el Correntoso (27 km²). Se alimenta de los deshielos y constituye la naciente del río Limay. Posee varias islas, siendo la más grande e importante por su actividad turística la isla Victoria, de 31 km².

Su intenso color azul, sus islas, y el paisaje que lo rodea, lo convierten en uno de los lugares más atractivos del sur argentino y un imán para el turismo nacional e internacional, cimentando así un fuerte crecimiento poblacional de sus ciudades ribereñas, lo que ha creado algunos problemas de contaminación de sus aguas.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Build Lays',
      theme: ThemeData(
          primarySwatch: Colors.lightGreen
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Top Lakes')
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
                'images/huapi.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );


  }



}