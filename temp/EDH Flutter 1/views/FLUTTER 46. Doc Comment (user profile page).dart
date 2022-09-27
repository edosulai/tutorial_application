import 'package:flutter/material.dart';

/// Class UserProfile di gunakan untuk menampilkan profile user ke layar dengan indah
class UserProfile extends StatelessWidget {
  /// field ini di gunakan untuk menyimpan nama user
  final String name;
  final String role;
  final String photoURL;

  /// * [name] berisi *nama user*. Nilai defaultnya adalah `No Name`.
  ///
  /// * [role] berisi peran/jabatan dari user. Nilai defaultnya adlaah `No Role`.
  ///
  /// * [photoURL] berisi link **foto user**. Nilai defaultnya adalah `null`.
  ///
  /// Contoh
  /// ```
  /// final UserProfile profile = UserProfile(
  ///   name: "nama user",
  ///   role: "peran user",
  ///   photoURL: "https://example.com/photo.jpg",
  /// );
  /// ```
  const UserProfile({this.name = "No Name", this.role = "No Role", this.photoURL});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image(
          image: NetworkImage(
            (photoURL != null)
                ? photoURL
                : "https://cdn4.iconfinder.com/data/icons/web-ui-color/128/Account-512.png",
          ),
          fit: BoxFit.cover,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 5),
        Text(
          "[$role]",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
