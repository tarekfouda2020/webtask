part of 'home_imports.dart';

class HomeController {
  final ObsValue<int> secondObs = ObsValue<int>.withInit(0);
  final ObsValue<int> currentImageIndex = ObsValue<int>.withInit(0);
  final ObsValue<int> bottomNavIndex = ObsValue<int>.withInit(0);


  final TextEditingController minutesController = TextEditingController();
  final TextEditingController secondsController = TextEditingController();

 final List<String> imagesList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGds4caC_PZT_k3N-LCQb_EZLK-PV7k_fp4A&s",
    "https://www.nissanusa.com/content/dam/Nissan/us/vehicles/ariya/2025/overview/pfa/2025-nissan-ariya-electric-suv-d-v3.jpg",
    "https://www-europe.nissan-cdn.net/content/dam/Nissan/nissan_middle_east/vehicles/magnite/homepage/Magnite-D-EN.jpg.ximg.full.hero.jpg"
  ];

 final List<String> similarImageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGds4caC_PZT_k3N-LCQb_EZLK-PV7k_fp4A&s",
    "https://www.nissanusa.com/content/dam/Nissan/us/vehicles/ariya/2025/overview/pfa/2025-nissan-ariya-electric-suv-d-v3.jpg",
    "https://www-europe.nissan-cdn.net/content/dam/Nissan/nissan_middle_east/vehicles/magnite/homepage/Magnite-D-EN.jpg.ximg.full.hero.jpg",
    "https://images.unsplash.com/photo-1592194996308-7b43878e84a6?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROtx7PRskVkS2ob3MGYlfUFGcYQoKVvE1Llg&s",
    "https://i.pinimg.com/736x/8b/8d/68/8b8d68a2fbfd23930de9dbc9da6fb0c2.jpg",
    "https://i.pinimg.com/736x/f0/2a/26/f02a268ac03a689479a8bb2fb1a14a14.jpg",
    "https://i.pinimg.com/736x/47/ab/18/47ab184efc89efcc5a69eebd18a072c6.jpg",
    "https://i.pinimg.com/736x/8b/8d/68/8b8d68a2fbfd23930de9dbc9da6fb0c2.jpg",
    "https://i.pinimg.com/736x/f0/2a/26/f02a268ac03a689479a8bb2fb1a14a14.jpg",
    "https://i.pinimg.com/736x/47/ab/18/47ab184efc89efcc5a69eebd18a072c6.jpg",
  ];

  final List<String> svgIconPaths = [
    "assets/images/home_icon_svg.svg",
    "assets/images/invoice_icon_svg.svg",
    "assets/images/user_icon_svg.svg",
  ];

  void runTimer() {
    int seconds = int.parse(secondsController.text) +
        (int.parse(minutesController.text) * 60);
    secondObs.setValue(seconds);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      var newValue = secondObs.getValue() - 1;
      secondObs.setValue(newValue);
      if (newValue == 0) {
        timer.cancel();
      }
    });
  }

  void changeBottomNavIndex(int index) {
    bottomNavIndex.setValue(index);
  }
  void updateCurrentImageIndex(int index) {
    currentImageIndex.setValue(index);
  }

}
