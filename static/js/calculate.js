document.addEventListener("DOMContentLoaded", function () {
  let imageUrl = "static/assets/PLTGU.jpg";
  document.body.style.backgroundImage = `url(${imageUrl})`;
  document.body.style.backgroundSize = "cover";
});
let sumber_t = {
  TIE: [
    "PT.FIRMAN KETAUN",
    "PT.TENDRI DHARMA SAMUDRA",
    "PT.BARA ANUGERAH SEJAHTERA",
    "PT.GLOBAL ANTAR NUSANTARA LINES",
    "PT.SAMUDRA SARANA FLORESMA",
    "PT.GEMA MUTIARA MARINA",
    "PT.BUMI CENDANA ABADI",
    "PT.SEA ASIH LINE",
    "PT.SWADAYA WIRA MARITIM",
    "PT.LAUTAN JATA MANGGALA",
    "PT.BAHARI SANDI PRATAMA",
    "PT.LAUTAN JAYA MANGGALA",
  ],
  ADARO: ["PT.ADARO INDONESIA"],
  PLNBB: [
    "PT.BASKARA SINAR SAKTI",
    "PT.USAHA MAJU MAKMUR",
    "PT.SUMBER REZEKI SAMUDRA JAYA",
    "PT.PLN BATUBARA",
    "PT.KREASI ENERGI ALAM",
    "PT.ARUTMIN INDONESIA",
    "PT.BUMI CENDANA ABADI",
    "PT.TENDRI DHARMA SAMUDRA",
    "PT.TIGA DAYA ENERGI",
    "PT.BORNEO INDOBARA",
    "PT.SWADAYA WIRA MARITIM",
    "PT.BARATABANG",
    "PT.SAROLANGUN PRIMA COAL",
    "PT.KALTIM PRIMA COAL",
    "PT.BANYAN KOALINDO LESTARI",
    "PT.BUDI GEMA GEMPITA",
    "PT.BERAU COAL",
    "PT.BELGI ENERGY",
    "PT.MUARA ALAM SEJAHTERA",
  ],
  PTBA: ["PT.BUKIT ASAM"],
  HE: [
    "PT.BAHTERA BESTARI SHIPPING",
    "PT.TENDRI DHARMA SAMUDRA",
    "PT.BUKIT PRIMA BAHARI",
    "PT.HANSON ENERGY",
    "PT.GEMA MUTIARA MARINA",
    "PT.SEA ASIH LINE",
    "PT.GORBY PUTRA UTAMA",
  ],
  KII: ["PT.KASIH INDUSTRI INDONESIA"],
  "PLNBB LRC": [
    "PT.USAHA MAJU MAKMUR",
    "PT.BELGI ENERGY",
    "PT.SAROLANGUN PRIMA COAL",
    "PT.BUDI GEMA GEMPITA",
    "PT.SINARBARU WIJAYA PERKASA",
    "PT.TANJUNG RAYA SENTOSA",
    "PT.TIGA DAYA ENERGI",
    "PT.BUANA PERKASA SUKSES",
    "PT.KASIH COAL RESOURCES",
    "PT.BARATABANG",
  ],
  "PLNBB MRC": [
    "PT.KALTIM PRIMA COAL",
    "PT.BUDI GEMA GEMPITA",
    "PT.USAHA MAJU MAKMUR",
    "PT.BANYAN KOALINDO LESTARI",
    "PT.TRITUNGGAL BARA SEJATI",
    "PT.GEMA MUTIARA MARINA",
    "PT.BUANA PERKASA SUKSES",
    "PT.SINARBARU WIJAYA PERKASA",
  ],
  "TIE MRC": [
    "PT.TENDRI DHARMA SAMUDRA",
    "PT.LAUTAN JAYA MANGGALA",
    "PT.GEMA MUTIARA MARINA",
    "PT.SUKSES WAHANA MARITIM",
    "PT.BUANA LINTAS LAUTAN",
    "PT.WISTARA INTERNASIONAL",
    "PT.TITAN INFRA ENERGY",
  ],
  "TIE LRC": [
    "PT.GEMA MUTIARA MARINA",
    "PT.TENDRI DHARMA SAMUDRA",
    "PT.LAUTAN JAYA MANGGALA",
    "PT.SUKSES WAHANA MARITIM",
    "PT.BUANA LINTAS LAUTAN",
    "PT.WISTARA INTERNASIONAL",
    "PT.TITAN INFRA ENERGY",
  ],
  GEL: ["PT.GLOBAL ENERGI LESTARI", "PT.WISTARA INTERNASIONAL"],
  IGN: ["PT.INTI GARDA NUSANTARA"],
  NLN: ["PT.NUKKUWATU LINTAS NUSANTARA"],
  SESM: ["PT.SUMBER ENERGI SUKSES MAKMUR"],
  TBC: ["PT.TRUNGTUM BEBATUAN CEMERLANG", "PT.TRITUNGGAL BARA SEJATI"],
  SPC: ["PT.SAROLANGUN PRIMA COAL"],
  MME: ["PT.MENAMBANG MUARA ENIM"],
  MIP: ["PT.MUSTIKA INDAH PERMAI"],
  MANDIRI: ["PT.MANDIRI INTI PERKASA"],
  BSR: ["PT.BARA SELARAS RESOURCES"],
  BGG: ["PT.BUDI GEMA GEMPITA"],
  BP: ["PT.BANJARSARI PRIBUMI"],
  AI: ["PT.ARUTMIN INDONESIA"],
  ARA: ["PT.ANUGERAH RAHAYU ADIPERKASA"],
  KJA: ["PT.KIDECO JAYA AGUNG"],
  TBR: ["PT.TANAH BAMBU RESOURCES"],
  "PLNBB NIAGA": [
    "PT.ANTANG GUNUNG MERATUS",
    "PT.TIWA ABADI",
    "PT.BARATABANG",
    "PT.JOHNLIN GROUP",
  ],
  SDJ: ["PT.SUNGAI DANAU JAYA"],
  "DP ": ["PT.DIZAMATRA POWERINDO"],
  BEK: ["PT.BHARINTO EKATAMA"],
  SPE: ["PT.SUMBER PANCA ENERGI"],
};

let firstSupplier = document.getElementById("pemasok1");
for (supplier in sumber_t) {
  let supplierOption = document.createElement("option");
  supplierOption.value = supplier; // Set nilai option sesuai dengan target
  supplierOption.text = supplier; // Set teks yang akan ditampilkan dalam option
  firstSupplier.appendChild(supplierOption); // Tambahkan option ke dalam select
}
let secondSupplier = document.getElementById("pemasok2");
for (supplier in sumber_t) {
  let supplierOption = document.createElement("option");
  supplierOption.value = supplier; // Set nilai option sesuai dengan target
  supplierOption.text = supplier; // Set teks yang akan ditampilkan dalam option
  secondSupplier.appendChild(supplierOption);
}
function hitungKalori(
  kalori1,
  kalori2,
  kalori3,
  kuantitas1,
  kuantitas2,
  kuantitas3,
  target_kalori
) {
  let totalKalori =
    kalori1 * kuantitas1 + kalori2 * kuantitas2 + kalori3 * kuantitas3;
  let hasilKalori = totalKalori / target_kalori;
  return hasilKalori;
}
function blendCalories() {
  let pemasok1 = document.getElementById("pemasok1").value;
  let pemasok2 = document.getElementById("pemasok2").value;
  let kalori1 = document.getElementById("kalori1").value;
  let kalori2 = document.getElementById("kalori2").value;
  let kuantitas1 = document.getElementById("kuantitas1").value;
  let kuantitas2 = document.getElementById("kuantitas2").value;
  let bio_kalori = document.getElementById("bio_kalori").value;
  let bio_kuantitas = document.getElementById("bio_kuantitas").value;
  let kalori_target = document.getElementById("kalori_target").value;
  let nama_operator = document.getElementById("operator").value;
  document.getElementById("target_kalori").value = kalori_target;
  document.getElementById("nama_operator").value = nama_operator;
  document.getElementById("total_kalori").value = hitungKalori(
    kalori1,
    kalori2,
    bio_kalori,
    kuantitas1,
    kuantitas2,
    bio_kuantitas,
    kalori_target
  );
  document.getElementById("hasil_kalori").classList.remove("d-none");
}
