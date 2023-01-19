class Kontak {
  int id;
  String nama;
  String jabatan;
  String noTelepon;
  String alamat;
  String imageUrl;

  Kontak({
    required this.id,
    required this.nama,
    required this.jabatan,
    required this.alamat,
    required this.noTelepon,
    required this.imageUrl
  });

  factory Kontak.fromJson(Map<String, dynamic> json) => Kontak(
      id: json["id"],
      nama: json["nama"],
      noTelepon: json["image"],
      alamat: json["alamat"],
      jabatan: json["jabatan"],
      imageUrl: json["imageUrl"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "image": noTelepon,
        "alamat": alamat,
        "jabatan": jabatan,
        "imageUrl": imageUrl
      };
}
