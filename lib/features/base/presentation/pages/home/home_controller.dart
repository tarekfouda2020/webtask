part of 'home_imports.dart';


class HomeController {

  final BaseBloc<List<TripModel>> itemsBloc = BaseBloc([]);
  final ObsValue<int> selectedTabObs = ObsValue.withInit(0);

  final List<String> tabs = [
    'Items',
    'Pricing',
    'Info',
    'Tasks',
    'Analytics',
  ];


  Future<void> fetchItems()async{
    itemsBloc.loadingState();
    var result = await getIt<BaseRepository>().getTrips();
    itemsBloc.successState(result);
  }

}
