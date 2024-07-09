import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo Component';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(children: [
            ImageSection(image: 'images/panecillo.jpg'),
            TitleSection(name: 'Panecillo', location: 'Quito - Ecuador'),
            ButtonSection(),
            TextSection(
                description:
                    "El Panecillo es una elevación natural de 3.000 metros sobre el nivel del mar, (200 metros más alto que el promedio de la ciudad de Quito) enclavada en el corazón mismo de la ciudad de Quito (Ecuador). Es el sitio más visitado de la ciudad. Por su ubicación se ha convertido en el más importante mirador natural de la ciudad, desde el que se puede apreciar la disposición urbana de la capital ecuatoriana, desde su centro histórico y hacia los extremos norte y sur. El Panecillo está coronado por una escultura gigante de aluminio de la «Virgen de Quito», creada por el español Agustín de la Herrán Matorras, el cual se basó en la obra compuesta por Bernardo de Legarda, uno de los más importantes representantes de la Escuela quiteña."),
            ImageSection(image: 'images/galapagos.jpg'),
            TitleSection(
                name: 'Islas Galapagos',
                location: 'Quito - Oceano Pacifico - Ecuador'),
            ButtonSection(),
            TextSection(
                description:
                    "Las islas Galápagos1​ (también islas de las Galápagos y oficialmente conocidas como archipiélago de Colón1​ o archipiélago de Galápagos)2​ constituyen un archipiélago del océano Pacífico ubicado a 972 km de la costa de Ecuador.3​ Fueron descubiertas en 1535 por la tripulación del barco de Tomás de Berlanga. Está conformado por trece islas grandes con una superficie mayor a 10 km², nueve islas medianas con una superficie de 1 km² a 10 km² y otros 107 islotes de tamaño pequeño, además de promontorios rocosos de pocos metros cuadrados, distribuidos alrededor de la línea ecuatorial, que conjuntamente con el Archipiélago Malayo, son los únicos archipiélagos del planeta que tienen territorio tanto en el hemisferio norte como en el hemisferio sur."),
              ImageSection(image: 'images/mmundo.jpg'),
            TitleSection(
                name: 'Mitad del Munoo',
                location: 'Quito - San Antonio de Pichicha - Ecuador'),
            ButtonSection(),
            TextSection(
                description:
                    "La Ciudad Mitad del Mundo es un complejo turístico y cultural propiedad de la prefectura de la provincia de Pichincha. Está situado en la parroquia de San Antonio del Distrito Metropolitano de Quito, al norte de la ciudad de Quito La principal atracción del lugar es el monumento a la Mitad del Mundo, que tiene como finalidad resaltar la ubicación exacta de la línea ecuatorial, de la cual el país toma su nombre, y destacar la misión geodésica franco-española del siglo xviii que ubicó el sitio aproximado por el cual pasa la línea equinoccial"),
            ImageSection(image: 'images/quilotoa.jpg'),
            TitleSection(
                name: 'Laguna Quilotoa',
                location: 'Quito - Pujilí, Cotopaxi - Ecuador'),
            ButtonSection(),
            TextSection(
                description:
                    "El Quilotoa es una de las 15 lagunas de origen volcánico más hermosas del mundo, debido a su color verde esmeralda, de tonos variables por sus minerales disueltos en sus aguas. Su temperatura bordea los 12 grados centígrados, de enero a mayo las lluvias son frecuentes. Este impresionante destino está relacionado intrínsecamente con la vida de sus habitantes, cada sitio muestra la riqueza natural acompañado de servicios y actividades turísticas de la zona. Sus lugares destacados de visita son: el mirador del Quilotoa, el mirador Shalalá y el Centro turístico Comunitario Lagoverde."),
            ImageSection(image: 'images/salinas.jpg'),
            TitleSection(name: 'Salinas', location: 'Costa - Santa Elena - Ecuador'),
            ButtonSection(),
            TextSection(description: 'Salinas es una ciudad costera en la punta oeste de la provincia de Santa Elena en Ecuador. Es conocida por sus playas populares, como San Lorenzo y Chipipe, ambas rodeadas por el Malecón, que está repleto de palmeras. Cerca del Malecón está el Museo de Ballenas que alberga ballenas, delfines y leones marinos. Las ballenas jorobadas migratorias pasan por el sector rocoso de La Chocolatera, que ofrece vistas panorámicas del océano Pacífico.'),
            
          ]),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call_outlined,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me_outlined,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share_rounded,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Color.fromARGB(255, 255, 68, 68)),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  // ···
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
  void _toggleFavorite() {
  setState(() {
    if (_isFavorited) {
      _favoriteCount -= 1;
      _isFavorited = false;
    } else {
      _favoriteCount += 1;
      _isFavorited = true;
    }
  });
}
}