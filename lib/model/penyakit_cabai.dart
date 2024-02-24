class PenyakitCabai {
  String name;
  String description;
  List<String> controlingDisease;
  String family;
  String genus;
  String imageAsset;
  List<String> imageUrls;

  PenyakitCabai({
    required this.name,
    required this.description,
    required this.controlingDisease,
    required this.family,
    required this.genus,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var penyakitList = [
  PenyakitCabai(
    name: "Bintik Daun",
    description:
        "Penyakit ini menimbulkan kerusakan pada daun, batang dan akar. Gejala serangan penyakit ini mulai terlihat dari munculnya bercak bulat berwarna coklat pada daun dankering, ukuran bercak bisa mencapai sekitar 1 inci. Pusat bercak berwarna pucat sampai putih dengan warna tepi lebih tua. Bercak yang tua dapat menyebabkan lubang-lubang.Bercak daun mampu menimbulkan kerugian ekonomi yang besar pada budidaya cabai, daun yang terserang akan layu dan rontok. Penyakit bercak daun ini dapat menyerang tanaman muda di persemaian, dan cenderung lebih banyak menyerang tanaman tua. Serangan berat meyebabkan tanaman cabai kehilangan hampir semua daunnya, kondisi ini akan mempengaruhi kemampuan cabai dalam menghasilkan buah. ",
    controlingDisease: [
      "Menanam bibit yang bebas patogen pada lahan yang tidak terkontaminasi oleh patogen, baik dipersemaian maupun di lapangan.",
      "Perlakuan benih sebelum tanam.",
      "Perbaikan drainase",
      "Waktu tanam yang tepat adalah musim kemarau dengan irigasi yang baik dan pergiliran tanaman dengan tanaman non solanaceae",
      "Pengendalian kimia dapat dilakukan dengan fungisida secara bijaksana, efektif, terdaftar dan diijinkan oleh Menteri Pertanian, berpedoman pada peramalan cuaca dan populasi spora di lapangan"
    ],
    family: 'Cercospora sp.',
    genus: 'Begomovirus',
    imageAsset: 'assets/gemini.jpg',
    imageUrls: [
      'https://www.kampustani.com/wp-content/uploads/2020/12/cara-mengatasi-bercak-daun-cabai-1536x1152.jpg',
      'https://www.bing.com/th?id=OIP.SQUE5xVrhvsPwF3hElzPvwHaHH&w=146&h=141&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
      'https://www.bing.com/th?id=OIP.vtWkTGO9ObSrp8lZmW43qQAAAA&w=146&h=120&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2'
    ],
  ),
  PenyakitCabai(
    name: "Layu",
    description:
        "Daun yang terserang mengalami kelayuan mulai dari bagian bawah, menguning danmenjalar ke atas ke ranting muda. Bila infeksi berkembang tanaman menjadi layu. Warna jaringan akar dan batang menjadi coklat. Tempat luka infeksi tertutup hifa putih seperti kapas. Bila serangan terjadi pada saat pertumbuhan tanaman maksimum, maka tanaman masih dapat menghasilkan buah. Namun bila serangan sudah sampai pada batang, maka buah kecil akan gugur.",
    controlingDisease: [
      "Sanitasi dengan mencabut dan memusnahkan tanaman terserang.",
      "Dianjurkan memanfaatkan agen antagonis Trichoderma spp. dan Gliocladium spp. yang diaplikasikan bersamaan dengan pemupukan dasar.",
      "Penggunaan fungisida sesuai anjuran sebagai alternatif terakhir.",
    ],
    family: 'Fusarium oxysporum f.sp',
    genus: 'Tobamovirus',
    imageAsset: 'assets/mozaik.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP._xtk20oJYoxmLsUPuC2eJgHaGW?w=190&h=180&c=7&r=0&o=5&pid=1.7',
      'https://bisatani.com/wp-content/uploads/2021/03/mengatasi-layu-fusarium-pada-tanaman-cabai.jpg',
      'https://1.bp.blogspot.com/-BmutAxcmytU/WMRzBf8we5I/AAAAAAAAMSk/R3icD0A9pKYuRvTgjkS0Z9bJIg-nlAWKACLcB/s400/Apa%2BPenyebab%2BCabe%2BHidroponik%2BLayu%2BDaun%2BBerjatuhan.jpg'
    ],
  ),
  PenyakitCabai(
    name: "Sehat",
    description:
        "Sistem mendeteksi tanaman cabai anda baik-baik saja, tidak ada gejala penyakit yang terdeteksi",
    controlingDisease: [
      "Lakukan perawatan tanaman secara rutin, untuk menjaga tanaman tetap sehat",
    ],
    family: '',
    genus: 'Pseudomonas syringae pv.',
    imageAsset: 'assets/tomat.jpg',
    imageUrls: [
      'https://1.bp.blogspot.com/-qMKMYtv28Wc/XmmbTDM1gPI/AAAAAAAAAhQ/2_zcFae1_g0kixdha0l-M1qS0rZRlpKrQCNcBGAsYHQ/s1600/20200222_151020.jpg',
      'https://blog.tokotanaman.com/wp-content/uploads/2018/01/penyebab-daun-cabai-keriting-1024x682.jpg',
      'https://4.bp.blogspot.com/-Y8mh3KoAGg4/WRFEFyh-i0I/AAAAAAAAFks/_BBG6yri0u0E-HlKUG08_acUh9ImrxMeACLcB/s1600/Daun%2BCabai.jpg'
    ],
  ),
  PenyakitCabai(
    name: "Thrips",
    description:
        "penyakit ini menyerang tanaman dengan menghisap cairan permukaan bawah daun (terutama daun-daun muda). Serangan ditandai dengan adanya bercak keperak - perakkan. Daun yang terserang berubah warna menjadi coklat tembaga, mengeriting atau keriput dan akhirnya mati. Pada serangan berat menyebabkan daun, tunas atau pucuk menggulung ke dalam dan muncul benjolan seperti tumor, pertumbuhan tanaman terhambat dan kerdil bahkan pucuk tanaman menjadi mati.",
    controlingDisease: [
      "Menggunakan tanaman perangkap seperti kenikir kuning.",
      "Menggunakan mulsa perak.",
      "Penggunaan perangkap warna kuning sebanyak 40 buah per ha atau 2 buah per 500 m2 yang dipasang sejak tanaman berumur 2 minggu. Perangkap dapat dibuat dari potongan bambu yang dipasang plastik map warna kuning. Plastik diolesi dengan lem agar thrips yang tertarik menempel. Apabila plastik sudah penuh dengan thrips maka plastik perlu diganti.",
      "Pemanfaatan musuh alami yang potensial untuk mengendalikan hama thrips, antara lain predator kumbang Coccinellidae, tungau, predator larva Chrysopidae, kepik Anthocoridae dan patogen Entomophthora sp",
    ],
    family: 'Thrips parvispinus Karny',
    genus: '-',
    imageAsset: 'assets/kutukebul.jpg',
    imageUrls: [
      'https://2.bp.blogspot.com/-5u8DuM1HPXk/Up5mcSv4JuI/AAAAAAAABm8/VCOL8N0K0BI/s1600/TRIPS+5.jpg',
      'https://th.bing.com/th/id/R.dc2df3b838640effc578551bdeb4d83b?rik=vLNCGlXOyesUYA&riu=http%3a%2f%2finfopromodiskon.com%2fuserfiles%2fuploads%2fgejala-serangan-thrips.jpg&ehk=8zB7gTiQfkBfCdsiiyC%2bGoNdpmGWJW0rNDDBDojXpPw%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.57f58d717446dd43ea0992afe8859863?rik=5nXiQ70GRTjRuA&riu=http%3a%2f%2f3.bp.blogspot.com%2f-nzdCHTc1-4M%2fUJ25zGkQGJI%2fAAAAAAAAAHM%2f-X83HrpOSko%2fs1600%2fFoto0593.jpg&ehk=5ommRxrBp3qPVfadR%2fS4caG%2ffUYwvOFD1Ids6NToOKI%3d&risl=&pid=ImgRaw&r=0'
    ],
  ),
  PenyakitCabai(
    name: "Virus Kuning",
    description:
        "Tanaman yang terserang gemini virus secara umum gejala-gejala yang dapat diamati adalah helai daun mengalami “vein clearing”, dimulai dari daun-daun pucuk, berkembang menjadi warna kuning yang jelas, tulang daun menebal dan daun menggulung ke atas (cupping). Infeksi lanjut dari geminivirus menyebabkan daun-daun mengecil dan berwarna kuning terang, tanaman kerdil dan tidak berbuah. Pengamatan lapang menunjukkan pertanaman cabai merah yang 100% terserang tidak menghasilkan buah sama sekali.",
    controlingDisease: [
      "Gunakan varietas toleran/tahan yakni Tanjung-1, Tanjung-2, Lembang-1 atau varietas hybrid yang sudah beradaptasi baik seperti Hot Beauty, Hot Chili, TM 999 dan lainnya.",
      "Gunakan persemaian yang benar, pemupukan seimbang, melakukan sanitasi, dan pencabutan tanaman sakit.",
      "Untuk menghindari kutu kebul, lakukan penanaman Tumpangsari"
    ],
    family: 'Geminivaridae',
    genus: 'Begomovirus',
    imageAsset: 'assets/gemini.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/P1BicoTdkVlPKqfuZAS1C2aaByU=/100x67:900x600/750x500/data/photo/2023/02/02/63db17d6a7ca1.jpg',
      'https://kartian.my.id/wp-content/uploads/2021/03/1610529028-330-4781881-760x490.jpg',
      'https://tanesia.id/wp-content/uploads/2021/06/gemini-virus.jpg'
    ],
  )
];
