import Chart from 'chart.js/auto'

export const bars = () => {
  const ctx = document.getElementById('myChart2');

  if (ctx) {
    const totalCrypto = parseInt(ctx.dataset.crypto, 10)
    const totalReal = parseInt(ctx.dataset.real, 10)
    const totalCustom = parseInt(ctx.dataset.custom, 10)
    const totalBank = parseInt(ctx.dataset.bank, 10)

    new Chart(ctx, {
      type: 'bar',
      data: {
        // via le controller de pages et donc vue dashboard, récupérer infos conso de la journée
        labels: [`Crypto: ${totalCrypto}$`,`Real Estate: ${totalReal}$`,`Custom Invest: ${totalCustom}$`, `Bank Acount: ${totalBank}$`],
        datasets: [{
          label: '$',
          data: [totalCrypto, totalReal, totalCustom, totalBank],
          borderWidth: 1,
          backgroundColor: ["#ED4D6E","#F07575", "#00DF00", "#0F19EB"]
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
            display: false
          },
          title: {
            display: true,

          }
        },
      },
    });

  }
}
