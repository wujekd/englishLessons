


class Subject {
  int id;
  Map<String, String> name;
  Map<String, String> vocabulary;
  Map<String, String> sentences;
  Map<String, String> description;
  double progress; 

  Subject({
    required this.id,
    required this.name,
    this.vocabulary = const {},
    this.sentences = const {},
    this.description = const {},
    this.progress = 0.0,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'] as int,
      name: Map<String, String>.from(json['name'] as Map),
      vocabulary: Map<String, String>.from(json['vocabulary'] as Map? ?? {}),
      sentences: Map<String, String>.from(json['sentences'] as Map? ?? {}),
      description: Map<String, String>.from(json['description'] as Map? ?? {}),
      progress: (json['progress'] as num?)?.toDouble() ?? 0.0,
    );
  }
}