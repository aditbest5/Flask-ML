document.addEventListener("DOMContentLoaded", function () {
    let imageUrl = "static/assets/PLTGU.jpg";
    document.body.style.backgroundImage = `url(${imageUrl})`;
    document.body.style.backgroundSize = "cover";
  });

  let supplierSelect = document.getElementById("supplier");
for (let supplier in sumber_t) {
  let option = document.createElement("option");
  option.value = supplier; // Set nilai option sesuai dengan supplier
  option.text = supplier; // Set teks yang akan ditampilkan dalam option
  supplierSelect.appendChild(option); // Tambahkan option ke dalam select
}

let targetSelect = document.getElementById("target");
daftar_target.forEach((data) => {
  let option = document.createElement("option");
  option.value = data; // Set nilai option sesuai dengan target
  option.text = data; // Set teks yang akan ditampilkan dalam option
  targetSelect.appendChild(option); // Tambahkan option ke dalam select
});