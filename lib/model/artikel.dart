class Artikel {
  int id;
  String judul;
  String isi;
  String imageUrl;
  String tanggal;

  Artikel({
    required this.id,
    required this.judul,
    required this.isi,
    required this.tanggal,
    required this.imageUrl,
  });

  factory Artikel.fromJson(Map<String, dynamic> json) => Artikel(
      id: json["id"],
      judul: json["judul"],
      imageUrl: json["image"],
      tanggal: json["tanggal"],
      isi: json["isi"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "judul": judul,
        "image": imageUrl,
        "tanggal": tanggal,
        "isi": isi
      };
}
