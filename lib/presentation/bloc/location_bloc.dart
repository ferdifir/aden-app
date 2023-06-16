import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';

import 'location_event.dart';
import 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial());

  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async* {
    if (event is GetLocation) {
      yield LocationLoading();
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        yield LocationLoaded(position);
      } catch (e) {
        yield const LocationError('Failed to get location');
      }
    }
  }
}
