<?php
// created: 2016-11-02 08:15:46
$dictionary["ts_Departure"]["fields"]["aos_products_quotes_ts_departure_1"] = array (
  'name' => 'aos_products_quotes_ts_departure_1',
  'type' => 'link',
  'relationship' => 'aos_products_quotes_ts_departure_1',
  'source' => 'non-db',
  'module' => 'AOS_Products_Quotes',
  'bean_name' => 'AOS_Products_Quotes',
  'vname' => 'LBL_AOS_PRODUCTS_QUOTES_TS_DEPARTURE_1_FROM_AOS_PRODUCTS_QUOTES_TITLE',
  'id_name' => 'aos_products_quotes_ts_departure_1aos_products_quotes_ida',
);
$dictionary["ts_Departure"]["fields"]["aos_products_quotes_ts_departure_1_name"] = array (
  'name' => 'aos_products_quotes_ts_departure_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_QUOTES_TS_DEPARTURE_1_FROM_AOS_PRODUCTS_QUOTES_TITLE',
  'save' => true,
  'id_name' => 'aos_products_quotes_ts_departure_1aos_products_quotes_ida',
  'link' => 'aos_products_quotes_ts_departure_1',
  'table' => 'aos_products_quotes',
  'module' => 'AOS_Products_Quotes',
  'rname' => 'name',
);
$dictionary["ts_Departure"]["fields"]["aos_products_quotes_ts_departure_1aos_products_quotes_ida"] = array (
  'name' => 'aos_products_quotes_ts_departure_1aos_products_quotes_ida',
  'type' => 'link',
  'relationship' => 'aos_products_quotes_ts_departure_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_QUOTES_TS_DEPARTURE_1_FROM_TS_DEPARTURE_TITLE',
);
