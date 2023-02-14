class Kuisioner {
  Kuisioner({
    required this.idKuisioner,
    required this.nomor,
    required this.pertanyaan,
  });

  String idKuisioner;
  String nomor;
  String pertanyaan;

  factory Kuisioner.fromJson(Map<String, dynamic> json) => Kuisioner(
        idKuisioner: json["id_kuisioner"],
        nomor: json["nomor"],
        pertanyaan: json["pertanyaan"],
      );

  Map<String, dynamic> toJson() => {
        "id_kuisioner": idKuisioner,
        "nomor": nomor,
        "pertanyaan": pertanyaan,
      };
}
