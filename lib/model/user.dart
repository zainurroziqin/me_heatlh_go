class User {
    User({
        this.idUser,
        this.username,
        this.name,
        this.password,
        this.asalSekolah,
        this.role,
    });

    String? idUser;
    String? username;
    String? name;
    String? password;
    String? asalSekolah;
    String? role;

    factory User.fromJson(Map<String, dynamic> json) => User(
        idUser: json["id_user"],
        username: json["username"],
        name: json["name"],
        password: json["password"],
        asalSekolah: json["asal_sekolah"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "username": username,
        "name": name,
        "password": password,
        "asal_sekolah": asalSekolah,
        "role": role,
    };
}