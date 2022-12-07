import Chart from 'chart.js/auto'

export const donut = () => {
  const ctx = document.getElementById('myChart');

  if (ctx) {
    const totalCrypto = parseInt(ctx.dataset.crypto, 10)
    const totalReal = parseInt(ctx.dataset.realestate, 10)
    const totalCustom = parseInt(ctx.dataset.custom, 10)
    const totalBank = parseInt(ctx.dataset.bank, 10)

    new Chart(ctx, {
      type: 'doughnut',
      data: {
        // via le controller de pages et donc vue dashboard, récupérer infos conso de la journée
        labels: [`Crypto: ${totalCrypto}$`,`Real Estate: ${totalReal}$`,`Custom Invest: ${totalCustom}$`, `Bank Acount: ${totalBank}$`],
        datasets: [{
          label: '$',
          data: [totalCrypto, totalReal, totalCustom, totalBank],
          borderWidth: 1,
          backgroundColor: ["#ED4D6E","#F07575", "#00DF00", "#0F19EB" ]
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
            // text: "Resultat"
          }
        },
      },
    });

  }
}
