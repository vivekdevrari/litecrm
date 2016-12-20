<?php
// created: 2016-08-24 06:04:41
$dictionary["ts_Passenger"]["fields"]["cases_ts_passenger_1"] = array (
  'name' => 'cases_ts_passenger_1',
  'type' => 'link',
  'relationship' => 'cases_ts_passenger_1',
  'source' => 'non-db',
  'module' => 'Cases',
  'bean_name' => 'Case',
  'vname' => 'LBL_CASES_TS_PASSENGER_1_FROM_CASES_TITLE',
  'id_name' => 'cases_ts_passenger_1cases_ida',
);
$dictionary["ts_Passenger"]["fields"]["cases_ts_passenger_1_name"] = array (
  'name' => 'cases_ts_passenger_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CASES_TS_PASSENGER_1_FROM_CASES_TITLE',
  'save' => true,
  'id_name' => 'cases_ts_passenger_1cases_ida',
  'link' => 'cases_ts_passenger_1',
  'table' => 'cases',
  'module' => 'Cases',
  'rname' => 'name',
);
$dictionary["ts_Passenger"]["fields"]["cases_ts_passenger_1cases_ida"] = array (
  'name' => 'cases_ts_passenger_1cases_ida',
  'type' => 'link',
  'relationship' => 'cases_ts_passenger_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CASES_TS_PASSENGER_1_FROM_TS_PASSENGER_TITLE',
);
