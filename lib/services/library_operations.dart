import 'package:spotify_project/models/music.dart';

class MusicOperation {
  MusicOperation._();
  static List<Music> getLibrary() {
    return <Music>[
      Music(
          'Drip Too Hard (Lil Baby & Gunna)',
          'https://is1-ssl.mzstatic.com/image/thumb/Music112/v4/e0/6e/7c/e06e7c84-345e-3617-7108-cda9ca9ccc68/18UMGIM62579.rgb.jpg/100x100bb.jpg',
          'Dekh toofan aya hai',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/f6/f7/8c/f6f78cf1-ab2b-5b2d-6503-89034f0c3b54/mzaf_750802035392960562.plus.aac.p.m4a'),
      Music(
          'Toofan',
          'https://m.media-amazon.com/images/M/MV5BMTM5NzBlOTEtODBkZS00MmIzLWI5MGYtMGVmN2IwMmE5ZDI0XkEyXkFqcGdeQXVyMTI1NDAzMzM0._V1_.jpg',
          'Dekh toofan aya hai',
          ''),
      Music(
          'Toofan',
          'https://m.media-amazon.com/images/M/MV5BMTM5NzBlOTEtODBkZS00MmIzLWI5MGYtMGVmN2IwMmE5ZDI0XkEyXkFqcGdeQXVyMTI1NDAzMzM0._V1_.jpg',
          'Dekh toofan aya hai',
          ''),
      Music(
          'Toofan',
          'https://m.media-amazon.com/images/M/MV5BMTM5NzBlOTEtODBkZS00MmIzLWI5MGYtMGVmN2IwMmE5ZDI0XkEyXkFqcGdeQXVyMTI1NDAzMzM0._V1_.jpg',
          'Dekh toofan aya hai',
          '')
    ];
  }
}
