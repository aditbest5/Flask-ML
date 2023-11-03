document.addEventListener("DOMContentLoaded", function () {
  let imageUrl = "static/assets/PLTGU.jpg";
  console.log(imageUrl);
  document.body.style.backgroundImage = `url(${imageUrl})`;
  document.body.style.backgroundSize = "cover";
});

let daftar_target = [
  "GCV ARB",
  "TM ARB",
  "Ash  Content ARB",
  "VM ADB",
  "FC ADB",
  "Total Sulphur ARB",
  "Total Sulphur DAFB",
  "C ADB",
  "H ADB",
  "N ADB",
  "O ADB",
  "HGI",
  "Slagging",
  "Fouling",
  "IDT (Reducing)",
  "SiO2",
  "Al2O3",
  "Fe2O3",
  "CaO",
  "MgO",
  "Na2O",
  "K2O",
  "TiO2",
  "SO3",
  "MnO2",
  "P2O5",
];
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
let targetSelect = document.getElementById("target");
daftar_target.forEach((data) => {
  let option = document.createElement("option");
  option.value = data; // Set nilai option sesuai dengan target
  option.text = data; // Set teks yang akan ditampilkan dalam option
  targetSelect.appendChild(option); // Tambahkan option ke dalam select
});
let supplierSelect = document.getElementById("supplier");
for (supplier in sumber_t) {
  let option = document.createElement("option");
  option.value = supplier; // Set nilai option sesuai dengan target
  option.text = supplier; // Set teks yang akan ditampilkan dalam option
  supplierSelect.appendChild(option); // Tambahkan option ke dalam select
}
let tambangSelect = document.getElementById("tambang");
function supplierChange(e) {
  let list_tambang = "";
  sumber_t[e].forEach((tambang) => {
    list_tambang += "<option value=" + tambang + ">" + tambang + "</option>";
    tambangSelect.innerHTML = list_tambang;
  });
}
function prediction() {
  let table = document.getElementById("table");
  table.classList.remove("d-none");
}
