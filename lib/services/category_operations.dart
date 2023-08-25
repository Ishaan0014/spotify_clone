import 'package:spotify_project/models/category.dart';

class CategoryOperations {
  CategoryOperations._();
  static List<Categoryy> getCategories() {
    return <Categoryy>[
      Categoryy("Liked Songs",
          "https://i.scdn.co/image/ab67706c0000da8470d229cb865e8d81cdce0889"),
      Categoryy("Daily Mix 1",
          "https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebd8b9980db67272cb4d2c3daf/1/en/default"),
      Categoryy("Daily Mix 2",
          "https://i1.sndcdn.com/artworks-001022042416-0ss27g-t500x500.jpg"),
      Categoryy("NF Radio",
          "https://seeded-session-images.scdn.co/v1/img/artist/6fOMl44jA4Sp5b9PpYCkzz/de"),
      Categoryy("Daily Mix 3",
          "https://dailymix-images.scdn.co/v2/img/ab6761610000e5eba00b11c129b27a88fc72f36b/3/en/default"),
      Categoryy("Lil Baby",
          "https://i.scdn.co/image/ab6761610000e5eb6cad3eff5adc29e20f189a6c"),
    ];
  }
}
