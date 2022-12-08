import Chart from 'chart.js/auto'

export const donut = () => {
  const ctx = document.getElementById('myChart');

  console.log('test.data');
  if (ctx) {
    const totalCrypto = parseFloat(ctx.dataset.crypto, 10)
    const totalReal = parseFloat(ctx.dataset.realestate, 10)
    const totalCustom = parseFloat(ctx.dataset.custom, 10)
    const totalBank = parseFloat(ctx.dataset.bank, 10)

    const test = new Chart(ctx, {
      type: 'doughnut',
      data: {
        // via le controller de pages et donc vue dashboard, récupérer infos conso de la journée
        labels: [`Crypto: ${totalCrypto}%`,`Real Estate: ${totalReal}%`,`Custom Invest: ${totalCustom}%`, `Bank Acount: ${totalBank}%`],
        datasets: [{
          label: '%',
          data: [totalCrypto, totalReal, totalCustom, totalBank],
          borderWidth: 1,
          backgroundColor: ["#FFFE50" , "#F11CB5","#74EEEA","#F76865"]
        }],
      },
      options: {
        responsive: true,
        plugins: {
          labels:{showActualPercentages: true},
          legend: {
            position: 'bottom',
          },
          title: {
            display: true
            // text: "Resultat"
          },
          pieceLabel: {
            mode: 'value'
          }
        },
      },
    });
  }
}
