document.addEventListener("DOMContentLoaded", function () {
  let imageUrl = "static/assets/PLTGU.jpg";
  document.body.style.backgroundImage = `url(${imageUrl})`;
  document.body.style.backgroundSize = "cover";
});

async function blendCalories() {
  const coalYardData = await fetch("http://127.0.0.1:5000/get-coal-yard")
    .then((response) => response.json())
    .catch((err) => {
      console.log(err);
    });
  // Target kalori yang ingin dicapai
  let target_kalori = document.getElementById("target_kalori").value;
  console.log(target_kalori);
  // Simpan kombinasi COAL_YARD yang mendekati target kalori
  let selectedCoalYards = [];

  //   coalYardData.forEach((data) => {
  //     console.log(data);
  //     let hasil = data;
  //   });
  for (let i = 0; i < coalYardData.length; i++) {
    for (let j = i + 1; j < coalYardData.length; j++) {
      const totalKalori = coalYardData[i].CALORIE + coalYardData[j].CALORIE;
      console.log(totalKalori);
      // Cek apakah total kalori mendekati target
      if (Math.abs(totalKalori - target_kalori) < 100) {
        selectedCoalYards.push([coalYardData[i], coalYardData[j]]);
      }
    }
  }

  console.log(selectedCoalYards);
}
