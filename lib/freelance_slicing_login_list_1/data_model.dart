class DataModel {
  final String title;
  final String subtitle;
  final String image;

  const DataModel({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

final List<DataModel> dataList = [
  const DataModel(
    title: 'Mercury',
    subtitle: 'Subtitle 1',
    image: 'assets/diamond.png',
  ),
  const DataModel(
    title: 'Venus',
    subtitle: 'Subtitle 2',
    image: 'assets/diamond.png',
  ),
  const DataModel(
    title: 'Earth',
    subtitle: 'Subtitle 3',
    image: 'assets/diamond.png',
  ),
  const DataModel(
    title: 'Mars',
    subtitle: 'Subtitle 4',
    image: 'assets/diamond.png',
  ),
  const DataModel(
    title: 'Jupiter',
    subtitle: 'Subtitle 5',
    image: 'assets/diamond.png',
  ),
  const DataModel(
    title: 'Saturn',
    subtitle: 'Subtitle 6',
    image: 'assets/diamond.png',
  ),
  const DataModel(
    title: 'Uranus',
    subtitle: 'Subtitle 7',
    image: 'assets/diamond.png',
  ),
];
