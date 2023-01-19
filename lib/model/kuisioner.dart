class Kuisioner {
  int id;
  String nomerSoal;
  String soal;

  Kuisioner({
    required this.id,
    required this.nomerSoal,
    required this.soal,
  });

  factory Kuisioner.fromJson(Map<String, dynamic> json) => Kuisioner(
        id: json["id"],
        nomerSoal: json["nomerSoal"],
        soal: json["soal"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nomerSoal": nomerSoal,
        "soal": soal,
      };
}
