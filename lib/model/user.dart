class User {
    User({
         this.idUser,
         this.username,
         this.name,
         this.jenisKelamin,
         this.umur,
         this.password,
         this.asalSekolah,
         this.role,
    });

    String? idUser;
    String? username;
    String? name;
    String? jenisKelamin;
    String? umur;
    String? password;
    String? asalSekolah;
    String? role;

    factory User.fromJson(Map<String, dynamic> json) => User(
        idUser: json["id_user"],
        username: json["username"],
        name: json["name"],
        jenisKelamin: json["jenis_kelamin"],
        umur: json["umur"],
        password: json["password"],
        asalSekolah: json["asal_sekolah"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "username": username,
        "name": name,
        "jenis_kelamin": jenisKelamin,
        "umur": umur,
        "password": password,
        "asal_sekolah": asalSekolah,
        "role": role,
    };
}