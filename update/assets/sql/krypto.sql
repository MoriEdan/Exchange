UPDATE `settings_krypto` SET `value_settings` = '1' WHERE `key_settings` = 'maintenance_mode';
UPDATE `settings_krypto` SET `value_settings`='' WHERE `key_settings` = 'hidden_third_trading_service_cfg';

DELETE FROM `dashboard_krypto`;
DELETE FROM `top_list_krypto`;
DELETE FROM `watching_krypto`;

CREATE TABLE `additional_pages_krypto` (
`id_additional_pages` int(11) NOT NULL,
`name_additional_pages` varchar(50) NOT NULL,
`url_additional_pages` text NOT NULL,
`icon_additional_pages` varchar(255) NOT NULL,
`svg_additional_pages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `banktransfert_accountavailable_krypto` (
`id_banktransfert_accountavailable` int(11) NOT NULL,
`bank_name__banktransfert_accountavailable` varchar(255) NOT NULL,
`currency_banktransfert_accountavailable` varchar(50) NOT NULL,
`iban_banktransfert_accountavailable` text NOT NULL,
`bic_banktransfert_accountavailable` text NOT NULL,
`address_banktransfert_accountavailable` text NOT NULL,
`accountowner_banktransfert_accountavailable` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `banktransfert_krypto` (
`id_banktransfert` int(11) NOT NULL,
`uref_banktransfert` varchar(255) NOT NULL,
`id_user` int(11) NOT NULL,
`bankref_banktransfert` varchar(255) NOT NULL,
`currency_banktransfert` varchar(20) NOT NULL,
`created_date_banktransfert` varchar(15) NOT NULL,
`status_banktransfert` int(11) NOT NULL DEFAULT '0',
`update_date_banktransfert` varchar(15) NOT NULL,
`amount_banktransfert` varchar(50) NOT NULL,
`proecessed_banktransfert` int(11) NOT NULL DEFAULT '0',
`bankaccount_banktransfert` int(11) DEFAULT NULL,
`wallet_receive_banktransfert` varchar(255) NOT NULL DEFAULT 'USD',
`amount_wallet_received_banktransfert` varchar(255) NOT NULL DEFAULT '0',
`fees_wallet_banktransfert` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `banktransfert_proof_krypto` (
`id_banktransfert_proof` int(11) NOT NULL,
`id_banktransfert` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`url_banktransfert_proof` text NOT NULL,
`date_banktransfert_proof` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `bitbank_krypto` (
`id_bitbank` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_bitbank` text NOT NULL,
`secret_bitbank` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `bitmex_krypto` (
`id_bitmex` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_bitmex` text NOT NULL,
`secret_bitmex` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `blockonomics_address_krypto` (
`id_blockonomics_trs` int(11) NOT NULL,
`id_user` varchar(50) NOT NULL,
`address_blockonomics_trs` text NOT NULL,
`date_blockonomics_trs` varchar(15) NOT NULL,
`symbol_blockonomics_address` varchar(50) NOT NULL DEFAULT 'BTC'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `blockonomics_transactions_krypto` (
`id_blockonomics_transactions` int(11) NOT NULL,
`address_blockonomics_transactions` text NOT NULL,
`id_user` varchar(25) NOT NULL,
`txid_blockonomics_transactions` text NOT NULL,
`date_blockonomics_transactions` varchar(15) NOT NULL,
`status_blockonomics_transactions` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `btcmarket_krypto` (
`id_btcmarket` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_btcmarket` text NOT NULL,
`secret_btcmarket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `coinex_krypto` (
`id_coinex` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_coinex` text NOT NULL,
`secret_coinex` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `coinspot_krypto` (
`id_coinspot` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_coinspot` text NOT NULL,
`secret_coinspot` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `country_krypto` (
`id_country` int(11) NOT NULL,
`iso_country` varchar(10) NOT NULL,
`name_country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cron_krypto` (
`id_cron` int(11) NOT NULL,
`page_cron` text NOT NULL,
`last_update_cron` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `deposit_history_proof_krypto` (
`id_deposit_history_proof` int(11) NOT NULL,
`id_deposit_history` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`date_deposit_history_proof` varchar(15) NOT NULL,
`url_deposit_history_proof` text NOT NULL,
`sended_deposit_history_proof` varchar(15) NOT NULL DEFAULT '',
`reason__deposit_history_proof` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `exchanges_krypto` (
`id_exchanges` int(11) NOT NULL,
`market_exchanges` varchar(50) NOT NULL,
`symbol_exchanges` varchar(50) NOT NULL,
`currency_exchanges` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `exmo_krypto` (
`id_exmo` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_exmo` text NOT NULL,
`secret_exmo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `gateio_krypto` (
`id_gateio` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_gateio` text NOT NULL,
`secret_gateio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `identity_asset_krypto` (
`id_identity_asset` int(11) NOT NULL,
`id_identity` int(11) NOT NULL,
`id_identity_step` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`value_identity_asset` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `identity_doclist_krypto` (
`id_identity_doclist` int(11) NOT NULL,
`name_identity_doclist` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `identity_krypto` (
`id_identity` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`date_processed_identity` varchar(15) NOT NULL,
`status_identity` int(11) NOT NULL DEFAULT '0',
`lupdate_identity` varchar(15) NOT NULL,
`document_identity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `identity_step_krypto` (
`id_identity_step` int(11) NOT NULL,
`name_identity_step` varchar(255) NOT NULL,
`type_identity_step` varchar(255) NOT NULL,
`description_identity_step` text NOT NULL,
`order_identity_step` int(11) NOT NULL,
`allow_cam_identity_step` int(11) NOT NULL DEFAULT '1',
`document_ratio_identity_step` varchar(50) NOT NULL DEFAULT '1/1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `livecoin_krypto` (
`id_livecoin` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_livecoin` text NOT NULL,
`secret_livecoin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `luno_krypto` (
`id_luno` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_luno` text NOT NULL,
`secret_luno` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `okcoinusd_krypto` (
`id_okcoinusd` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_okcoinusd` text NOT NULL,
`secret_okcoinusd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `okex_krypto` (
`id_okex` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_okex` text NOT NULL,
`secret_okex` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `paygateway_krypto` (
`id_paygateway` int(11) NOT NULL,
`name_paygateway` varchar(255) NOT NULL,
`arg_paygateway` varchar(255) NOT NULL,
`val_paygateway` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `quoinex_krypto` (
`id_quoinex` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_quoinex` text NOT NULL,
`secret_quoinex` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `user_widthdraw_krypto` (
`id_user_widthdraw` int(11) NOT NULL,
`type_user_widthdraw` varchar(50) NOT NULL,
`value_user_widthdraw` text NOT NULL,
`date_user_widthdraw` varchar(15) NOT NULL,
`id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `yobit_krypto` (
`id_yobit` int(11) NOT NULL,
`id_user` int(11) NOT NULL,
`key_yobit` text NOT NULL,
`secret_yobit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `additional_pages_krypto`
ADD PRIMARY KEY (`id_additional_pages`);

ALTER TABLE `banktransfert_accountavailable_krypto`
ADD PRIMARY KEY (`id_banktransfert_accountavailable`);

ALTER TABLE `banktransfert_krypto`
ADD PRIMARY KEY (`id_banktransfert`);

ALTER TABLE `banktransfert_proof_krypto`
ADD PRIMARY KEY (`id_banktransfert_proof`);

ALTER TABLE `bitbank_krypto`
ADD PRIMARY KEY (`id_bitbank`);

ALTER TABLE `bitmex_krypto`
ADD PRIMARY KEY (`id_bitmex`);

ALTER TABLE `blockonomics_address_krypto`
ADD PRIMARY KEY (`id_blockonomics_trs`);

ALTER TABLE `blockonomics_transactions_krypto`
ADD PRIMARY KEY (`id_blockonomics_transactions`);

ALTER TABLE `btcmarket_krypto`
ADD PRIMARY KEY (`id_btcmarket`);

ALTER TABLE `coinex_krypto`
ADD PRIMARY KEY (`id_coinex`);

ALTER TABLE `coinspot_krypto`
ADD PRIMARY KEY (`id_coinspot`);

ALTER TABLE `country_krypto`
ADD PRIMARY KEY (`id_country`);

ALTER TABLE `cron_krypto`
ADD PRIMARY KEY (`id_cron`);

ALTER TABLE `deposit_history_proof_krypto`
ADD PRIMARY KEY (`id_deposit_history_proof`);

ALTER TABLE `exchanges_krypto`
ADD PRIMARY KEY (`id_exchanges`);
ALTER TABLE `exchanges_krypto` ADD FULLTEXT KEY `exchange` (`market_exchanges`);
ALTER TABLE `exchanges_krypto` ADD FULLTEXT KEY `symbol` (`symbol_exchanges`);
ALTER TABLE `exchanges_krypto` ADD FULLTEXT KEY `currency` (`currency_exchanges`);

ALTER TABLE `exmo_krypto`
ADD PRIMARY KEY (`id_exmo`);

ALTER TABLE `gateio_krypto`
ADD PRIMARY KEY (`id_gateio`);

ALTER TABLE `identity_asset_krypto`
ADD PRIMARY KEY (`id_identity_asset`);

ALTER TABLE `identity_doclist_krypto`
ADD PRIMARY KEY (`id_identity_doclist`);

ALTER TABLE `identity_krypto`
ADD PRIMARY KEY (`id_identity`);

ALTER TABLE `identity_step_krypto`
ADD PRIMARY KEY (`id_identity_step`),
ADD UNIQUE KEY `id_identity_step` (`id_identity_step`),
ADD KEY `id_identity_step_2` (`id_identity_step`);

ALTER TABLE `livecoin_krypto`
ADD PRIMARY KEY (`id_livecoin`);

ALTER TABLE `luno_krypto`
ADD PRIMARY KEY (`id_luno`);

ALTER TABLE `okcoinusd_krypto`
ADD PRIMARY KEY (`id_okcoinusd`);

ALTER TABLE `okex_krypto`
ADD PRIMARY KEY (`id_okex`);

ALTER TABLE `paygateway_krypto`
ADD PRIMARY KEY (`id_paygateway`);

ALTER TABLE `quoinex_krypto`
ADD PRIMARY KEY (`id_quoinex`);

ALTER TABLE `user_widthdraw_krypto`
ADD PRIMARY KEY (`id_user_widthdraw`);

ALTER TABLE `yobit_krypto`
  ADD PRIMARY KEY (`id_yobit`);

  ALTER TABLE `blockfolio_krypto` ADD `market_blockfolio` VARCHAR(50) NOT NULL DEFAULT 'CCCAGG' AFTER `currency_blockfolio`;

  ALTER TABLE `currency_krypto` ADD `usd_rate_currency` VARCHAR(50) NOT NULL DEFAULT '1' AFTER `symbol_currency`;

  ALTER TABLE `deposit_history_krypto` ADD `currency_deposit_history` VARCHAR(50) NOT NULL DEFAULT 'USD' AFTER `fees_deposit_history`, ADD `wallet_deposit_history` VARCHAR(50) NOT NULL DEFAULT 'USD' AFTER `currency_deposit_history`, ADD `wallet_convert_m_deposit_history` VARCHAR(255) NOT NULL DEFAULT '1' AFTER `wallet_deposit_history`, ADD `ref_deposit_history` VARCHAR(255) NOT NULL AFTER `wallet_convert_m_deposit_history`;

  ALTER TABLE `internal_order_krypto` ADD `to_internal_order` VARCHAR(255) NOT NULL DEFAULT 'USD' AFTER `side_internal_order`, ADD `ref_internal_order` VARCHAR(255) NOT NULL AFTER `to_internal_order`;

  ALTER TABLE `notification_center_krypto` ADD `action_notification_center` TEXT NOT NULL AFTER `id_user`;

  ALTER TABLE `notification_krypto` ADD `market_notification` VARCHAR(50) NOT NULL DEFAULT 'CCCAGG' AFTER `id_user`, ADD `currency_notification` VARCHAR(50) NOT NULL DEFAULT 'USD' AFTER `market_notification`;

  ALTER TABLE `thirdparty_crypto_krypto` ADD `min_thirdparty_crypto` VARCHAR(15) NOT NULL AFTER `name_thirdparty_crypto`, ADD `max_thirdparty_crypto` VARCHAR(15) NOT NULL AFTER `min_thirdparty_crypto`, ADD `active_thirdparty_crypto` INT NOT NULL DEFAULT '1' AFTER `max_thirdparty_crypto`, ADD `precision_amount_thirdparty_crypto` VARCHAR(11) NULL DEFAULT '3' AFTER `active_thirdparty_crypto`;

  ALTER TABLE `top_list_krypto` ADD `currency_top_list` VARCHAR(50) NOT NULL AFTER `control_key_top_list`, ADD `market_top_list` VARCHAR(50) NOT NULL DEFAULT 'CCCAGG' AFTER `currency_top_list`;

  ALTER TABLE `watching_krypto` ADD `currency` VARCHAR(50) NOT NULL DEFAULT '' AFTER `symbol`, ADD `market` VARCHAR(50) NOT NULL DEFAULT 'CCCAGG' AFTER `currency`;

  ALTER TABLE `widthdraw_history_krypto` ADD `symbol_widthdraw_history` VARCHAR(50) NOT NULL DEFAULT 'USD' AFTER `description_widthdraw_history`, ADD `method_widthdraw_history` INT NOT NULL DEFAULT '0' AFTER `symbol_widthdraw_history`, ADD `fees_widthdraw_history` VARCHAR(50) NOT NULL DEFAULT '0' AFTER `method_widthdraw_history`, ADD `ref_widthdraw_history` VARCHAR(255) NOT NULL AFTER `fees_widthdraw_history`;


  ALTER TABLE `additional_pages_krypto` MODIFY `id_additional_pages` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

  ALTER TABLE `coinspot_krypto`
    MODIFY `id_coinspot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `banktransfert_accountavailable_krypto`
MODIFY `id_banktransfert_accountavailable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `banktransfert_krypto`
MODIFY `id_banktransfert` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

ALTER TABLE `banktransfert_proof_krypto`
MODIFY `id_banktransfert_proof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `bitbank_krypto`
MODIFY `id_bitbank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `bitmex_krypto`
MODIFY `id_bitmex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `blockonomics_address_krypto`
MODIFY `id_blockonomics_trs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

ALTER TABLE `blockonomics_transactions_krypto`
MODIFY `id_blockonomics_transactions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `btcmarket_krypto`
MODIFY `id_btcmarket` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `coinex_krypto`
MODIFY `id_coinex` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `country_krypto`
MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

ALTER TABLE `cron_krypto`
MODIFY `id_cron` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `deposit_history_proof_krypto`
MODIFY `id_deposit_history_proof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
ALTER TABLE `exchanges_krypto`
MODIFY `id_exchanges` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94473;

ALTER TABLE `exmo_krypto`
MODIFY `id_exmo` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `gateio_krypto`
MODIFY `id_gateio` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `identity_asset_krypto`
MODIFY `id_identity_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

ALTER TABLE `identity_doclist_krypto`
MODIFY `id_identity_doclist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `identity_krypto`
MODIFY `id_identity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

ALTER TABLE `identity_step_krypto`
MODIFY `id_identity_step` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `livecoin_krypto`
MODIFY `id_livecoin` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `luno_krypto`
MODIFY `id_luno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `okcoinusd_krypto`
MODIFY `id_okcoinusd` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `okex_krypto`
MODIFY `id_okex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `quoinex_krypto`
MODIFY `id_quoinex` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `paygateway_krypto`
MODIFY `id_paygateway` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `user_widthdraw_krypto`
MODIFY `id_user_widthdraw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

ALTER TABLE `yobit_krypto`
MODIFY `id_yobit` int(11) NOT NULL AUTO_INCREMENT;

INSERT INTO `settings_krypto` (`id_settings`, `key_settings`, `value_settings`, `encrypted_settings`) VALUES
(105, 'tradingview_chart', '0', 0),
(106, 'banktransfert_prefix', 'KRYP', 0),
(107, 'banktransfert_enable', '0', 0),
(110, 'widthdraw_fee', '0.3', 0),
(111, 'blockonomics_enable', '0', 0),
(112, 'blockonomics_apikey', '', 1),
(114, 'show_balance_estimation_in', 'EUR', 0),
(115, 'coingate_authtoken', '', 1),
(116, 'payment_ref_pattern', 'KRYP-$**$-$$$$', 0),
(117, 'deposit_currency_real', '[\"USD\",\"EUR\"]', 0),
(118, 'deposit_convert_to_enable', '0', 0),
(119, 'deposit_convert_to', 'BTC', 0),
(120, 'coingate_paymentconvertion', 'BTC', 0),
(121, 'currencylayer_currency_rate_apikey', '', 0),
(122, 'payment_approve_needed', '1', 0),
(123, 'deposit_currency_notinbalance', 'ETH', 0),
(124, 'show_balance_estimation', '0', 0),
(125, 'payeer_enable', '0', 0),
(126, 'payeer_shopid', '', 1),
(127, 'payeer_apikey', '', 1),
(128, 'blacklisted_countries', 'null', 0),
(129, 'banktransfert_proof_enable', '1', 0),
(130, 'banktransfert_proof_max', '2', 0),
(131, 'banktransfert_max', '2', 0),
(132, 'raveflutterwave_enabled', '0', 0),
(133, 'raveflutterwave_sandbox', '0', 0),
(134, 'raveflutterwave_public_key', '', 1),
(135, 'raveflutterwave_secret_key', '', 1),
(136, 'raveflutterwave_title', 'Krypto V45', 0),
(137, 'raveflutterwave_prefix', 'KRYP', 0),
(138, 'coinbasecommerce_enabled', '0', 0),
(139, 'coinbasecommerce_apikey', '', 1),
(140, 'coinbasecommerce_paymentitle', 'KRYPTO', 0),
(141, 'show_balance_estimation_user_currency', '1', 0),
(142, 'coinpayments_enabled', '0', 0),
(143, 'coinpayments_publickey', '', 1),
(144, 'coinpayments_privatekey', '', 1),
(145, 'coinpayments_marchant_id', '', 1),
(146, 'coinpayment_ipn_secret', '', 1),
(147, 'trading_free_symbol', 'BTC', 0),
(148, 'allowswitch_chart', '1', 0),
(149, 'hidden_third_trading_pattern', 'ORDR-$**$-$$$$', 0),
(150, 'poeditor_enable', '0', 0),
(151, 'poeditor_apikey', '', 1),
(152, 'poeditor_project', '', 0),
(153, 'widthdraw_pattern', 'WIDRAW-$**$-****', 0),
(154, 'perfectmoney_payee_account', '', 0),
(155, 'perfectmoney_payee_name', 'OVRLEY', 0),
(156, 'perfectmoney_enabled', '0', 0),
(157, 'coingate_paymentconvertion', 'BTC', 0),
(158, 'bankwithdraw_alert', 'Attention! The price of cryptocurrencies is volatile and can change a lot while transaction of cryptocurrencies is fulfilled. After your bank transfer reaches us, you will be able to commit to your purchase at any time, with the amount of cryptocurrencies you would receive recalculated every 60 seconds, but you will not be able to refund your payment*. Please note that the amount of cryptocurrencies that you paid for may have changed at the moment of fulfillment.\r\n\r\nExample: if you wanted to buy 1 BTC for 100 EUR and sent us 100 EUR bank transfer, but at the time when you commit to your purchase BTC price has risen to 200 EUR, you will only be able to get 0.5 BTC; if the price has dropped to 50 EUR, you will be able to get 2 BTC.\r\n\r\n* If you do not commit to your purchase in 2 weeks, your payment will be automatically refunded to the bank account from which you sent the payment, minus any fees we had to pay to send it back to you and minus our 1% fee.', 0),
(159, 'bankwithdraw_allowed_cryptocurrencies', '[\"BTC\"]', 0),
(160, 'blockonomics_payment_fees', '', 0),
(161, 'fortumo_payment_fees', '11', 0),
(162, 'coingate_payment_fees', '12', 0),
(163, 'coinpayment_payment_fees', '13', 0),
(164, 'raveflutterwave_payment_fees', '14', 0),
(165, 'coinbasecommerce_payment_fees', '15', 0),
(166, 'mollie_payment_fees', '18', 0),
(167, 'payeer_payment_fees', '16', 0),
(168, 'banktransfert_payment_fees', '17', 0),
(169, 'bankdeposit_alert', 'Attention! The price of cryptocurrencies is volatile and can change a lot while transaction of cryptocurrencies is fulfilled. After your bank transfer reaches us, you will be able to commit to your purchase at any time, with the amount of cryptocurrencies you would receive recalculated every 60 seconds, but you will not be able to refund your payment*. Please note that the amount of cryptocurrencies that you paid for may have changed at the moment of fulfillment.\r\n\r\nExample: if you wanted to sell 1 BTC for 100 EUR and sent us 1 BTC , but at the time when you commit to your sale BTC price has dropped to 50 EUR, you will only be able to get 50 EUR; if the price has raised to 200 EUR, you will be able to get 200 EUR.', 0),
(170, 'chat_disabled', '0', 0),
(171, 'identity_enabled', '1', 0),
(172, 'identity_block_deposit', '0', 0),
(173, 'identity_block_trade', '0', 0),
(174, 'identity_block_withdraw', '0', 0),
(175, 'donation_enable', '1', 0),
(176, 'donation_list', 'BTC:1dazdazdazdazdaddazd\r\nETH:1JiFQeQs5N7xUUQ6dc4ehRMgSQACpCZcKr\r\nLTC:1JiFQeQs5N7xUUQ6dc4ehRMgSQACpCZcKr\r\nZEC:1JiFQeQs5N7xUUQ6dc4ehRMgSQACpCZcKr', 0),
(177, 'donation_text', 'PUT A SMILE ON OUR FACES AND SUPPORT US BY DONATING 2 :)', 0),
(178, 'leaderboard_enable', '1', 0),
(179, 'starting_pair', 'BINANCE:ETH/BTC', 0),
(180, 'starting_pair_watchinglist', 'BINANCE:ETH/BTC\r\nBINANCE:BTC/USDT\r\nBINANCE:EOS/USDT\r\nBINANCE:DASH/ETH', 0),
(181, 'hide_market', '0', 0),
(182, 'paygoal_serviceid', '', 1),
(183, 'paygoal_secret', '', 1),
(184, 'paygoal_enable', '0', 0),
(185, 'paygoal_fees', '10', 0);



COMMIT;
