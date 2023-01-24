class Konsultan {
  Konsultan({
    this.idKonsultan,
    this.nama,
    this.noHp,
    this.imageUrl,
  });

  String? idKonsultan;
  String? nama;
  String? noHp;
  String? imageUrl;

  factory Konsultan.fromJson(Map<String, dynamic> json) => Konsultan(
        idKonsultan: json["id_konsultan"],
        nama: json["nama"],
        noHp: json["noHp"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id_konsultan": idKonsultan,
        "nama": nama,
        "noHp": noHp,
        "imageUrl": imageUrl,
      };
}
