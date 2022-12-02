// const axios = require('axios');

// export const apiCrypto = () => {
//   console.log("coucou")
//   let response = null;
//   new Promise(async (resolve, reject) => {
//     try {
//       response = await axios.get('https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest', {
//         headers: {
//           'X-CMC_PRO_API_KEY': 'ccd2677c-e8c9-4b57-a9df-39f0dba308ec',
//         },
//       });
//     } catch(ex) {
//       response = null;
//       // error
//       console.log(ex);
//       reject(ex);
//     }
//     if (response) {
//       // success
//       const json = response.data;
//       console.log(json);
//       resolve(json);
//     }
//   });
// }

import { CoinGeckoClient } from 'coingecko-api-v3';
const client = new CoinGeckoClient({
  timeout: 10000,
  autoRetry: true,
});
const trendingSearch = await client.trending();
