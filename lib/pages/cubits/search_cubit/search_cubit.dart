import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/service/Weather_Searvice.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  void getWeather({required String cityname}) async {
    emit(SearchLoding());
    try {
        WeatherSearvice searvice = WeatherSearvice();

      WeatherModel? weather = await searvice.getweather(CityName: cityname);
      print(weather);
      emit(SearchSuccess());
    } on Exception catch (e) {
      emit(SearchFailure());
    }
  }
}
