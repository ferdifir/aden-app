# Aden - Aplikasi Pengingat Adzan
Aden adalah sebuah aplikasi pengingat adzan yang dikembangkan menggunakan Flutter framework. Aplikasi ini memberikan fitur-fitur seperti jadwal sholat, arah kiblat, dan tanggal hijriah. Aden dapat digunakan secara gratis.

![Logo Aplikasi](https://github.com/ferdifir/aden-app/blob/main/screenshot/ss.PNG)

## Fitur
Aden memiliki beberapa fitur utama:

**Jadwal Sholat**: Menampilkan jadwal sholat harian berdasarkan lokasi pengguna. Jadwal sholat yang ditampilkan mencakup waktu sholat Subuh, Dzuhur, Ashar, Maghrib, dan Isya.

**Kiblat**: Menampilkan arah kiblat berdasarkan lokasi pengguna. Pengguna dapat mengarahkan perangkat ke arah yang ditunjukkan untuk mengetahui arah kiblat yang benar.

**Tanggal Hijriah**: Menampilkan tanggal hijriah saat ini berdasarkan kalender Hijriah. Ini membantu pengguna dalam mengetahui tanggal Hijriah yang sedang berlangsung.

## Instalasi
Pastikan Anda memiliki Flutter SDK terinstal di sistem Anda. Jika belum, Anda dapat mengunduh dan menginstalnya dari situs resmi Flutter.

- Clone repositori Aden ke direktori lokal Anda:
```
    git clone https://github.com/username/repo.git
```
- Masuk ke direktori proyek:
```
    cd aden
```
- Jalankan perintah berikut untuk menginstal semua dependensi yang diperlukan:
```
    flutter pub get
```
- Setelah selesai, jalankan aplikasi dengan perintah:
```
    flutter run
```

Pastikan Anda memiliki perangkat terhubung atau simulator yang berjalan untuk melihat Aden dalam tindakan.

## Konfigurasi
Aden membutuhkan beberapa konfigurasi agar dapat berfungsi dengan baik. Anda perlu melakukan konfigurasi berikut sebelum menjalankan aplikasi:

- Pastikan perangkat atau emulator yang digunakan memiliki akses ke internet.
- Izinkan aplikasi untuk mengakses lokasi pengguna. Pastikan izin lokasi diaktifkan pada perangkat Anda.

## Dependency

Aplikasi ini menggunakan beberapa dependency sebagai berikut:

- [flutter_map](https://pub.dev/packages/flutter_map): Digunakan untuk menampilkan peta dan menambahkan marker pada lokasi pengguna.
- [latlong2](https://pub.dev/packages/latlong2): Digunakan untuk mengelola koordinat latitude dan longitude.
- [geolocator](https://pub.dev/packages/geolocator): Digunakan untuk mendapatkan lokasi pengguna berdasarkan latitude dan longitude.
- [geocoding](https://pub.dev/packages/geocoding): Digunakan untuk mengonversi koordinat latitude dan longitude menjadi alamat atau sebaliknya.
- [flutter_bloc](https://pub.dev/packages/flutter_bloc): Digunakan untuk mengimplementasikan arsitektur BLoC (Business Logic Component) dalam pengelolaan state aplikasi.
- [equatable](https://pub.dev/packages/equatable): Digunakan untuk membandingkan objek secara mudah dan efisien.
