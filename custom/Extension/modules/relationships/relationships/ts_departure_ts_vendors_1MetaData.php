<?php
// created: 2016-09-06 02:05:31
$dictionary["ts_departure_ts_vendors_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'ts_departure_ts_vendors_1' => 
    array (
      'lhs_module' => 'ts_Departure',
      'lhs_table' => 'ts_departure',
      'lhs_key' => 'id',
      'rhs_module' => 'ts_Vendors',
      'rhs_table' => 'ts_vendors',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'ts_departure_ts_vendors_1_c',
      'join_key_lhs' => 'ts_departure_ts_vendors_1ts_departure_ida',
      'join_key_rhs' => 'ts_departure_ts_vendors_1ts_vendors_idb',
    ),
  ),
  'table' => 'ts_departure_ts_vendors_1_c',
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
      'name' => 'ts_departure_ts_vendors_1ts_departure_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'ts_departure_ts_vendors_1ts_vendors_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'ts_departure_ts_vendors_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'ts_departure_ts_vendors_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'ts_departure_ts_vendors_1ts_departure_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'ts_departure_ts_vendors_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'ts_departure_ts_vendors_1ts_vendors_idb',
      ),
    ),
  ),
);