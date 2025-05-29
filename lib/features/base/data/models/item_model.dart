class ItemModel {
  final String id;
  final String title;
  final String imageUrl;
  final String status;
  final DateTime startDate;
  final DateTime endDate;
  final List<String> teamMembers;
  final int unfinishedTasks;

  const ItemModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.status,
    required this.startDate,
    required this.endDate,
    required this.teamMembers,
    required this.unfinishedTasks,
  });
} 