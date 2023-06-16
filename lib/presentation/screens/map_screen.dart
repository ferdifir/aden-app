import 'package:aden/presentation/bloc/location_bloc.dart';
import 'package:aden/presentation/bloc/location_event.dart';
import 'package:aden/presentation/bloc/location_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late LocationBloc _locationBloc; // Tambahkan deklarasi LocationBloc

  @override
  void initState() {
    super.initState();
    _locationBloc = LocationBloc(); // Inisialisasi LocationBloc
    _locationBloc.add(GetLocation()); // Panggil event GetLocation
  }

  @override
  void dispose() {
    _locationBloc.close(); // Tutup LocationBloc ketika screen dihancurkan
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Lokasi'),
      ),
      body: BlocProvider<LocationBloc>.value( // Gunakan BlocProvider.value untuk menghindari pembuatan instance baru
        value: _locationBloc,
        child: BlocBuilder<LocationBloc, LocationState>(
          builder: (context, state) {
            if (state is LocationLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LocationLoaded) {
              return FlutterMap(
                options: MapOptions(
                  center: LatLng(
                    state.position.latitude,
                    state.position.longitude,
                  ),
                  zoom: 13.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: const ['a', 'b', 'c'],
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(
                          state.position.latitude,
                          state.position.longitude,
                        ),
                        builder: (ctx) => const Icon(Icons.location_on),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return const Center(
                child: Text('Gagal memuat lokasi'),
              );
            }
          },
        ),
      ),
    );
  }
}

