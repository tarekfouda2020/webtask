class TripModel {
  final String id;
  final String status;
  final String title;
  final TripDates dates;
  final List<TripParticipant> participants;
  final int unfinishedTasks;
  final String coverImage;

  const TripModel({
    required this.id,
    required this.status,
    required this.title,
    required this.dates,
    required this.participants,
    required this.unfinishedTasks,
    required this.coverImage,
  });

  factory TripModel.fromJson(Map<String, dynamic> json) {
    return TripModel(
      id: json['id'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      dates: TripDates.fromJson(json['dates'] as Map<String, dynamic>),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => TripParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
      unfinishedTasks: json['unfinished_tasks'] as int,
      coverImage: json['cover_image'] as String,
    );
  }
}

class TripDates {
  final String start;
  final String end;

  const TripDates({
    required this.start,
    required this.end,
  });

  factory TripDates.fromJson(Map<String, dynamic> json) {
    return TripDates(
      start: json['start'] as String,
      end: json['end'] as String,
    );
  }
}

class TripParticipant {
  final String name;
  final String avatarUrl;

  const TripParticipant({
    required this.name,
    required this.avatarUrl,
  });

  factory TripParticipant.fromJson(Map<String, dynamic> json) {
    return TripParticipant(
      name: json['name'] as String,
      avatarUrl: json['avatar_url'] as String,
    );
  }
} 