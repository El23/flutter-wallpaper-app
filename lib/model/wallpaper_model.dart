class WallpaperModel {
  String photographer;
  String photographer_url;
  int photographer_id;
  ScrModel scr;

  WallpaperModel(
      {this.photographer,
      this.photographer_url,
      this.photographer_id,
      this.scr});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
        scr: jsonData["scr"],
        photographer_url: jsonData["photographer_url"],
        photographer_id: jsonData["photographer_id"],
        photographer: jsonData["photographer"]);
  }
}

class ScrModel {
  String original;
  String small;
  String portrait;

  ScrModel({this.original, this.small, this.portrait});

  factory ScrModel.fromMap(Map<String, dynamic> jsonData) {
    return ScrModel(
        portrait: jsonData["portrait"],
        original: jsonData["original"],
        small: jsonData["small"]);
  }
}
