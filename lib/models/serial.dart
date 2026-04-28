class Serial {
  final String title;
  final String description;
  final String genre;
  final int year;
  final double rating;
  final String imagePath;

  const Serial({
    required this.title,
    required this.description,
    required this.genre,
    required this.year,
    required this.rating,
    required this.imagePath,
  });
}
const List<Serial> serialList = [
  Serial(
    title: 'Мышь',
    description: 'Психологический триллер о серийном убийце и детективе.',
    genre: 'Триллер, Детектив',
    year: 2021,
    rating: 8.7,
    imagePath: 'assets/images/series1.jpg',
  ),
  Serial(
    title: 'Связь',
    description: 'Детектив расследует преступления, связанные с загадочным делом.',
    genre: 'Детектив, Триллер',
    year: 2025,
    rating: 8.5,
    imagePath: 'assets/images/series2.jpg',
  ),
  Serial(
    title: 'Болтун',
    description: 'Таинственная история о человеке, который слишком много знает.',
    genre: 'Мистика, Триллер',
    year: 2023,
    rating: 8.0,
    imagePath: 'assets/images/series3.jpg',
  ),
  Serial(
    title: 'Богомол',
    description: 'Охотница на маньяков сталкивается с опасным преступником.',
    genre: 'Боевик, Детектив',
    year: 2024,
    rating: 8.2,
    imagePath: 'assets/images/series4.jpg',
  ),
  Serial(
    title: 'Искусство Сары',
    description: 'Художница раскрывает тёмные тайны в мире искусства.',
    genre: 'Драма, Триллер',
    year: 2023,
    rating: 7.8,
    imagePath: 'assets/images/series5.jpg',
  ),
  Serial(
    title: 'Слава',
    description: 'Женщина возвращается с планом мести после школьной травмы.',
    genre: 'Драма, Триллер',
    year: 2022,
    rating: 8.9,
    imagePath: 'assets/images/series6.jpg',
  ),
];