import Chart from 'chart.js/auto'

export const bars = () => {
  const ctx = document.getElementById('myChart2');
  const totalCustom = parseInt(ctx.dataset.custom, 10)
  const totalBank = 20

  new Chart(ctx, {
    type: 'bar',
    data: {
      // via le controller de pages et donc vue dashboard, récupérer infos conso de la journée
      labels: ['Custom', 'Bank'],
      datasets: [{
        label: '$',
        data: [totalCustom, totalBank],
        borderWidth: 1,
        backgroundColor: ["#ED4D6E","#F07575"]
      }],
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      },
      responsive: true,
      plugins: {
        legend: {
          position: 'top',
        },
        title: {
          display: true,
          // text: "Ma consommation de viande aujourd'hui"
        }
      },
    },
  });
}
