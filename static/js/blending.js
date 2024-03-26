document.addEventListener("DOMContentLoaded", function () {
  let imageUrl = "static/assets/PLTGU.jpg";
  document.body.style.backgroundImage = `url(${imageUrl})`;
  document.body.style.backgroundSize = "cover";
});

async function renderSupplier() {
  let firstSupplier = document.getElementById("pemasok1");
  let secondSupplier = document.getElementById("pemasok2");

  await fetch("http://10.8.11.43/get-supplier", {
    cache: "no-cache",
    credentials: "same-origin",
    headers: { "Content-Type": "application/json" },
  })
    .then((response) => response.json())
    .then((data) => {
      data.forEach((supplierObj) => {
        let option1 = document.createElement("option");
        option1.value = supplierObj.Suppliers;
        option1.text = supplierObj.Suppliers;

        let option2 = document.createElement("option");
        option2.value = supplierObj.Suppliers;
        option2.text = supplierObj.Suppliers;

        firstSupplier.appendChild(option1);
        secondSupplier.appendChild(option2);
      });
    })
    .catch((err) => {
      console.log(err);
    });
}

renderSupplier();

async function blendCalories() {
  let nama_operator = document.getElementById("operator").value;
  if (nama_operator) {
    try {
      const coalYardData = await fetch("http://10.8.11.43/get-coal-yard").then(
        (response) => response.json()
      );
      // Target kalori yang ingin dicapai
      let target_kalori = document.getElementById("target_kalori").value;
      // Simpan pasangan COAL_YARD yang mendekati target kalori
      let volumeA = 0;
      let volumeB = 0;
      let kaloriA = 0;
      let kaloriB = 0;
      let selectedCoalYard = null;
      let found = false;
      let id_tambangA = null;
      let id_tambangB = null;
      let kaloriBio = document.getElementById("bio_kalori").value;
      let volumeBio = parseFloat(
        document.getElementById("bio_kuantitas").value
      );
      for (let i = 0; i < coalYardData.length; i++) {
        const sumberTambangA = coalYardData[i];
        kaloriA = sumberTambangA.CALORIE;
        volumeA = parseFloat(sumberTambangA.VOLUME_LOAD.replace(/,/g, ""));

        for (let j = i + 1; j < coalYardData.length; j++) {
          const sumberTambangB = coalYardData[j];
          kaloriB = sumberTambangB.CALORIE;
          volumeB = parseFloat(sumberTambangB.VOLUME_LOAD.replace(/,/g, ""));

          // Hitung total volume A dan B
          const totalVolume = volumeA + volumeB + volumeBio;

          // Hitung target kalori
          const targetKalori =
            (kaloriA * volumeA + kaloriB * volumeB + kaloriBio * volumeBio) /
            totalVolume;

          // Jika target kalori mendekati target_kalori, simpan pasangan sumber tambang dan hentikan iterasi
          if (Math.abs(targetKalori - target_kalori) < 100) {
            // Misalnya, jika selisih kurang dari 100
            console.log(
              volumeA,
              " ",
              volumeB,
              " ",
              kaloriA,
              " ",
              kaloriB,
              " ",
              totalVolume
            );
            selectedCoalYard = {
              sumberTambangA,
              sumberTambangB,
              targetKalori,
              totalVolume,
            };
            found = true;
            break;
          }
        }
        if (found) {
          id_tambangA = selectedCoalYard.sumberTambangA.id_sumber_tambang;
          id_tambangB = selectedCoalYard.sumberTambangB.id_sumber_tambang;
          // Membuat objek Date yang merepresentasikan waktu saat ini
          let today = new Date();

          // Mendapatkan tanggal
          let date = today.getDate();

          // Mendapatkan bulan (dimulai dari 0 untuk Januari)
          let month = today.getMonth() + 1; // Ditambah 1 karena bulan dimulai dari 0

          // Mendapatkan tahun
          let year = today.getFullYear();
          let now = `${year}-${month}-${date}`;
          console.log(now);
          const supplierData = await fetch(
            `http://10.8.11.43/get-supplier-by-id/${id_tambangA}&${id_tambangB}`
          ).then((response) => response.json());
          console.log(supplierData);
          document.getElementById("pemasok1").value = supplierData[0].Suppliers;
          document.getElementById("pemasok2").value = supplierData[1].Suppliers;
          document.getElementById("kalori1").value = kaloriA;
          document.getElementById("kalori2").value = kaloriB;
          document.getElementById("kuantitas1").value = volumeA;
          document.getElementById("kuantitas2").value = volumeB;
          document.getElementById("hasil_kalori").classList.remove("d-none");
          document.getElementById("hasil_target_kalori").value =
            selectedCoalYard.targetKalori;
          document.getElementById("nama_operator").value = nama_operator;
          document.getElementById("total_kuantitas").value =
            selectedCoalYard.totalVolume;
          await fetch("http://10.8.11.43/store-history", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify({
              volumeA: volumeA,
              volumeB: volumeB,
              kaloriA: kaloriA,
              kaloriB: kaloriB,
              id_supplierA: `${supplierData[0].id_supplier}`,
              id_supplierB: `${supplierData[1].id_supplier}`,
              kaloriBio: kaloriBio,
              volumeBio: volumeBio,
              nama_operator: nama_operator,
              target_kalori: selectedCoalYard.targetKalori,
              date: now,
            }),
          })
            .then((response) => response.json())
            .then((data) => {
              console.log(data);
            })
            .catch((err) => {
              console.log(err.message);
            });
          break;
        }
      }
    } catch (error) {
      console.error("Error:", error);
    }
  } else {
    Swal.fire({
      title: "Warning!",
      text: "Masukan Nama Operator!",
      icon: "error",
    });
  }
}
