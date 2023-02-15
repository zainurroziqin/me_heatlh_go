class Artikel {
  Artikel({
    this.idArtikel,
    this.idKategori,
    this.judul,
    this.deskripsi,
    this.gambar,
    this.thumbnail,
    this.createdAt,
  });

  String? idArtikel;
  String? idKategori;
  String? judul;
  String? deskripsi;
  List<Thumbnail>? gambar;
  String? thumbnail;
  String? createdAt;

  factory Artikel.fromJson(Map<String, dynamic> json) => Artikel(
        idArtikel: json["id_artikel"],
        idKategori: json["id_kategori"],
        judul: json["judul"],
        deskripsi: json["deskripsi"],
        gambar: List<Thumbnail>.from(
            json["gambar"].map((x) => Thumbnail.fromJson(x))),
        thumbnail: json["thumbnail"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "id_artikel": idArtikel,
        "id_kategori": idKategori,
        "judul": judul,
        "deskripsi": deskripsi,
        "gambar": List<dynamic>.from(gambar!.map((x) => x.toJson())),
        "thumbnail": thumbnail,
        "created_at": createdAt,
      };
}

class Thumbnail {
  Thumbnail({
    this.namaGambar,
  });

  String? namaGambar;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        namaGambar: json["nama_gambar"],
      );

  Map<String, dynamic> toJson() => {
        "nama_gambar": namaGambar,
      };
}
