class Konsultan {
    Konsultan({
        this.idKonsultan,
        this.nama,
        this.noHp,
        this.pekerjaan,
        this.alamat,
        this.imageUrl,
    });

    String? idKonsultan;
    String? nama;
    String? noHp;
    String? pekerjaan;
    String? alamat;
    String? imageUrl;

    factory Konsultan.fromJson(Map<String, dynamic> json) => Konsultan(
        idKonsultan: json["id_konsultan"],
        nama: json["nama"],
        noHp: json["noHp"],
        pekerjaan: json["pekerjaan"],
        alamat: json["alamat"],
        imageUrl: json["imageUrl"],
    );

    Map<String, dynamic> toJson() => {
        "id_konsultan": idKonsultan,
        "nama": nama,
        "noHp": noHp,
        "pekerjaan": pekerjaan,
        "alamat": alamat,
        "imageUrl": imageUrl,
    };
}