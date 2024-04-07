import 'package:quiz/models/quiz_question.dart'; // Import model QuizQuestion

//question untuk list soal dan jawaban
const questions = [
  QuizQuestion(
    '1. Fungsi dari Authentication server adalah...', // Pertanyaan 1
    [
      'Untuk mengenali user yang berintegrasi ke jaringan dan memuat semua informasi dari user tersebut.',
      'Untuk melihat pengguna yang masuk ',
      'Untuk membatasi akun yang masuk ',
      'Semua jawaban benar',
      'Semua jawaban salah',
    ],
  ),
  QuizQuestion(
      '2. Symantec Norton Personal Firewall, Keri0 Personal adalah contoh dari...', // Pertanyaan 2
      [
        'Personal Firewall',
        'Firewall',
        'Packet Filter Firewall',
        'Softpedia',
        'Blayteam',
      ]),
  QuizQuestion(
    '3. Berikut ini merupakan fungsi dari Firewall, kecuali...', // Pertanyaan 3
    [
      'Melakukan pembuatan virus',
      'Mengatur dan mengontrol lalu lintas jaringan',
      'Mencatat semua kejadian, dan melaporkan kepada administrator ',
      'Melakukan autentikasi terhadap akses',
      'Melindungi sumber daya dalam jaringan private',
    ],
  ),
  QuizQuestion(
    '4. Proses yang dilakukan oleh firewall untuk \'menghadang\' dan memproses data dalam sebuah paket untuk menentukan bahwa paket tersebut diizinkan atau ditolak, berdasarkan kebijakan akses (access policy) yang diterapkan oleh seorang administrator adalah...', // Pertanyaan 4
    [
      'Inspeksi paket',
      'Drop paket',
      'Access paket',
      'Firewall',
      'Anti-spam',
    ],
  ),
  QuizQuestion(
    '5. Berikut ini adalah jenis-jenis firewall, kecuali...', // Pertanyaan 5
    [
      'Multilayer Inspection Firewall',
      'Packet Filtering Gateway',
      'Circuit Level Gateway',
      'Statefull Multilayer Inspection Firewall',
      'Application Layer Gateway',
    ],
  ),
  QuizQuestion(
    '6. Jenis firewall yang memberikan fitur terbanyak dan memberikan tingkat keamanan yang paling tinggi adalah...', // Pertanyaan 6
    [
      'Statefull Multilayer Inspection Firewall',
      'Packet Filtering Gateway',
      'Application Layer Gateway',
      'Circuit Level Gateway',
      'Multilayer Inspection Firewall',
    ],
  ),
  QuizQuestion(
    '7. Yang termasuk jenis metode enkripsi adalah...', // Pertanyaan 7
    [
      'SSL',
      'SDSL',
      'SASL',
      'SHS',
      'RHR',
    ],
  ),
  QuizQuestion(
    '8. Sekumpulan teknik untuk memanipulasi orang sehingga orang tersebut membocorkan informasi rahasia disebut...', // Pertanyaan 8
    [
      'Social Engineering',
      'Account compromise',
      'Packet Snifer',
      'Denial-of-Serviced.Probe',
      'Probe',
    ],
  ),
  QuizQuestion(
    '9. Mensyaratkan bahwa pengirim suatu informasi dapat diidentifikasi dengan benar dan ada jaminan bahwa identitas yang didapat tidak palsu adalah...', // Pertanyaan 9
    [
      'Authentication',
      'Integrity',
      'Confidentiality',
      'Nonrepudiation',
      'Availability',
    ],
  ),
  QuizQuestion(
    '10. Suatu proses mengamankan suatu informasi dengan membuat informasi tersebut tidak dapat dibaca tanpa bantuan pengetahuan khusus, disebut sebagai', // Pertanyaan 10
    [
      'Enkripsi',
      'Dekripsi',
      'Enkidu',
      'Residu',
      'Integrity',
    ],
  ),
];
