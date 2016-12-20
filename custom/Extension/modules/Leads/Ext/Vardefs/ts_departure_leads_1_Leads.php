<?php
// created: 2016-09-06 02:05:09
$dictionary["Lead"]["fields"]["ts_departure_leads_1"] = array (
  'name' => 'ts_departure_leads_1',
  'type' => 'link',
  'relationship' => 'ts_departure_leads_1',
  'source' => 'non-db',
  'module' => 'ts_Departure',
  'bean_name' => 'ts_Departure',
  'vname' => 'LBL_TS_DEPARTURE_LEADS_1_FROM_TS_DEPARTURE_TITLE',
  'id_name' => 'ts_departure_leads_1ts_departure_ida',
);
$dictionary["Lead"]["fields"]["ts_departure_leads_1_name"] = array (
  'name' => 'ts_departure_leads_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_TS_DEPARTURE_LEADS_1_FROM_TS_DEPARTURE_TITLE',
  'save' => true,
  'id_name' => 'ts_departure_leads_1ts_departure_ida',
  'link' => 'ts_departure_leads_1',
  'table' => 'ts_departure',
  'module' => 'ts_Departure',
  'rname' => 'name',
);
$dictionary["Lead"]["fields"]["ts_departure_leads_1ts_departure_ida"] = array (
  'name' => 'ts_departure_leads_1ts_departure_ida',
  'type' => 'link',
  'relationship' => 'ts_departure_leads_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_TS_DEPARTURE_LEADS_1_FROM_LEADS_TITLE',
);
