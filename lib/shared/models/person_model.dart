class Person {
  final String id;
  final String fullName;
  final int age;
  final String location;
  final String profilePicture;
  final List<String> albumImages;
  final int friends;
  final int comments;
  final String bio;

  int get photos => albumImages.length;

  Person({
    required this.id,
    required this.fullName,
    required this.age,
    required this.location,
    required this.profilePicture,
    required this.albumImages,
    required this.friends,
    required this.comments,
    required this.bio,
  });
}