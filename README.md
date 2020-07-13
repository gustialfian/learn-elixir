# learn-elixir
repository ini digunakan sebagai sarana tempat penyimpanan code dan note saya untuk mempelajari elixir. 

## basic type
elixir memiliki bermacam tipe data berikut merupakan tipe data yang elixir milikir
```exs
1          # integer
0x1F       # integer
1.0        # float
true       # boolean
:atom      # atom / symbol
"elixir"   # string / binaries
'elixir'   # charlist
[1, 2, 3]  # list
{1, 2, 3}  # tuple
```
boolean pada elixir itu sama dengan tipe data atom jadi `true === :true`.
string pada elixir di simpan sebagai binaries jadi `is_binary("hellö") === true`
charlist pada elixir di list byte jadi `[104, 101, 108, 108, 111] === 'hello'`

setiap tipe data ini memiliki helper function untuk melakukan cek tipe data
```exs
is_boolean/1
is_boolean/1
is_integer/1
is_float/1
is_number/1
is_atom/1
is_boolean/1
is_atom/1
is_binary/1
is_function/1
```

untuk tipe data (linked) List dan tuple sedikit berbeda yaitu list dimodelkan sebagai linked list yang dimana setiap operasi yang dilakukan pada akhir element akan cenderung lebih lama karena elixir akan melakukan traverse pada list hingga menemukan index element yang akan di lakukan operasi. sedangkan tupel disimpan secara berdekatan dalam memori. jadi jika kita ingin mendapatkan size dan element pada tupel terserah besar dan letaknya dimana akan cenderung lebih cepat, tetapi untuk penambahan dan perubahan cenderung lebih lambat. pada elixir kita bisa memastikan kecepatan dari fungsi tersebut dari namanya. jika menggunakan length maka kecepatanya linier dgn jumlah data, sedangkan size kecepatannya akan konstan.