class Pelicula {
  int idpelicula;
  String titulo;
  bool adultos;
  String? backdroopPath;
  List<String> generos;
  String tituloOriginal;
  String sinopsis;
  double popularidad;
  String? posterPath;
  String? fechaLanzamiento;
  bool video;
  double mediaVotos;
  int numVotos;

  Pelicula(
      {required this.idpelicula,
      required this.titulo,
      required this.adultos,
      this.backdroopPath,
      required this.generos,
      required this.tituloOriginal,
      required this.sinopsis,
      required this.popularidad,
      this.posterPath,
      this.fechaLanzamiento,
      required this.mediaVotos,
      required this.numVotos,
      required this.video});

  factory Pelicula.fromJson(Map<String, dynamic> json) => Pelicula(
        adultos: json["adult"],
        backdroopPath: json["backdrop_path"],
        generos: json["genres"] != null
            ? List<String>.from(
                json["genres"].map((genero) => genero["name"] ?? ('')))
            : [],
        idpelicula: json["id"],
        tituloOriginal: json["original_title"],
        sinopsis: json["overview"],
        popularidad: json["popularity"]?.toDouble(),
        posterPath: json["poster_path"],
        fechaLanzamiento: json["release_date"],
        titulo: json["title"],
        video: json["video"],
        numVotos: json["vote_average"]?.toDouble(),
        mediaVotos: json["vote_count"],
      );
}
