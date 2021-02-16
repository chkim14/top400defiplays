CREATE SCHEMA test;

-- populated by scraping "top accounts" on Etherscan
CREATE TABLE test.wallets (
          wallet_num string PRIMARY KEY,
          rank integer
);

-- populated by scraping Etherscan
CREATE TABLE test.wallet_holdings (
          wallet_num string,
          coin_name string,
          ticker string,
          units real,
          PRIMARY KEY(wallet_num,coin_name)
);

-- populated by Defi Pulse api
CREATE TABLE test.defi_coins (
          coin_name string PRIMARY Key
);

-- populated by CoinGecko api
CREATE TABLE test.all_coins (
          coin_name string PRIMARY KEY,
          ticker string,
          coin_id int
         );

