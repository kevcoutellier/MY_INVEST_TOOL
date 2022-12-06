import Chart from 'chart.js/auto'

export const donut = () => {
  const ctx = document.getElementById('myChart');
  const totalCustom = parseInt(ctx.dataset.custom, 10)
  const totalBank = 20


  new Chart(ctx, {
    type: 'doughnut',
    data: {
      // via le controller de pages et donc vue dashboard, récupérer infos conso de la journée
      labels: [`Custom Invest: ${totalCustom}$`, 'Bank'],
      datasets: [{
        label: '$',
        data: [totalCustom, totalBank],
        borderWidth: 1,
        backgroundColor: ["#ED4D6E","#F07575"]
      }],
    },
    options: {
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
