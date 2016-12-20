<?php
// created: 2016-08-24 06:04:41
$dictionary["cases_ts_passenger_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'cases_ts_passenger_1' => 
    array (
      'lhs_module' => 'Cases',
      'lhs_table' => 'cases',
      'lhs_key' => 'id',
      'rhs_module' => 'ts_Passenger',
      'rhs_table' => 'ts_passenger',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'cases_ts_passenger_1_c',
      'join_key_lhs' => 'cases_ts_passenger_1cases_ida',
      'join_key_rhs' => 'cases_ts_passenger_1ts_passenger_idb',
    ),
  ),
  'table' => 'cases_ts_passenger_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'cases_ts_passenger_1cases_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'cases_ts_passenger_1ts_passenger_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'cases_ts_passenger_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'cases_ts_passenger_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'cases_ts_passenger_1cases_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'cases_ts_passenger_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'cases_ts_passenger_1ts_passenger_idb',
      ),
    ),
  ),
);