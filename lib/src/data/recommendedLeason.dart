class RecommendedLeason {
  final String title;
  final String duration;
  final String leasonPhotoURL;

  RecommendedLeason({ this.title, this.duration, this.leasonPhotoURL });

  factory RecommendedLeason.fromJSON (Map<String, dynamic> json) {
    return RecommendedLeason(
      title: json['title'] as String,
      duration: json['duration'] as String,
      leasonPhotoURL: json['leasonPhotoURL'] as String
    );
  }
}