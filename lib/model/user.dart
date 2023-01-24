class User {
    User({
        this.idUser,
        this.username,
        this.name,
        this.password,
        this.role,
    });

    String? idUser;
    String? username;
    String? name;
    String? password;
    String? role;

    factory User.fromJson(Map<String, dynamic> json) => User(
        idUser: json["id_user"],
        username: json["username"],
        name: json["name"],
        password: json["password"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "username": username,
        "name": name,
        "password": password,
        "role": role,
    };
}