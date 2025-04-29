part of 'imports_home_widgets.dart';
class GridImagesViewHomeWidget extends StatelessWidget {
  const GridImagesViewHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagesList = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGds4caC_PZT_k3N-LCQb_EZLK-PV7k_fp4A&s",
      "https://www.nissanusa.com/content/dam/Nissan/us/vehicles/ariya/2025/overview/pfa/2025-nissan-ariya-electric-suv-d-v3.jpg",
      "https://www-europe.nissan-cdn.net/content/dam/Nissan/nissan_middle_east/vehicles/magnite/homepage/Magnite-D-EN.jpg.ximg.full.hero.jpg"
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: imagesList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imagesList[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
