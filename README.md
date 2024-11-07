# internship-mobile-gits

## Time Complexity
1. <b>Input Reading dan Penghilangan Spasi:</b> Fungsi split(' ') dan join('') pada input!.split(' ').join('') bekerja dengan kompleksitas O(n), di mana nnn adalah panjang string input.
2. <b>Looping Utama untuk Pemrosesan Brackets:</b> Looping for (var element in nowhitespace.split('')) berjalan sebanyak n kali, karena akan memeriksa setiap karakter pada string yang sudah dihilangkan spasinya.
 - Setiap operasi dalam loop ini—pengecekan tipe bracket, penambahan ke brackets, dan pengecekan kesesuaian penutup—adalah operasi O(1).
 - Oleh karena itu, keseluruhan proses ini memiliki kompleksitas O(n).

Jadi, <b>time complexity</b> dari program ini adalah O(n), di mana nnn adalah jumlah karakter pada input string setelah spasi dihilangkan.

## Space Complexity
1. Variabel nowhitespace: Menyimpan string tanpa spasi yang memiliki ukuran maksimal nnn, sehingga kompleksitas ruang untuk variabel ini adalah O(n).
2. List brackets: Pada kasus terburuk, semua karakter pembuka disimpan di sini. Jika input hanya terdiri dari karakter pembuka, ukuran maksimal dari brackets juga O(n).

Sehingga, <b>space complexity</b> dari program ini juga O(n).