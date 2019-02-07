ERMA RAMADHANI
---------------

Website ini dapat diakses melalui https://localhost/blog/public/.
Database bersama sample data-nya disediakan di folder database jika ingin langsung di-import.

Halaman pertama adalah halaman login. Setelah login, user disuguhkan halaman beranda yang berisi artikel-artikel.
Login bisa dengan:
1. Menggunakan akun mirum@mirum.com password mirumbandung (jika menggunakan database blog.sql yang di-import),
2. Register akun baru,
3. Menggunakan tombol Facebook. URL yang di set adalah https://localhost/blog/public/auth/facebook/callback. Jika menggunakan https://localhost:8000 maka URL perlu diganti.
Menu terdapat di menu dropdown sebelah kanan atas.

Slug diakses melalui http://localhost/blog/public/read/{slug}. Slug berupa judul-artikel.