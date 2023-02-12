class Kuisioner {
  Kuisioner({
    required this.idKuisioner,
    required this.pertanyaan,
  });

  String idKuisioner;
  String pertanyaan;

  factory Kuisioner.fromJson(Map<String, dynamic> json) => Kuisioner(
        idKuisioner: json["id_kuisioner"],
        pertanyaan: json["pertanyaan"],
      );

  Map<String, dynamic> toJson() => {
        "id_kuisioner": idKuisioner,
        "pertanyaan": pertanyaan,
      };
}
