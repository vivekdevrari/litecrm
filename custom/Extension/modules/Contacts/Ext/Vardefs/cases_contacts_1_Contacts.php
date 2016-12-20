<?php
// created: 2016-11-16 10:23:23
$dictionary["Contact"]["fields"]["cases_contacts_1"] = array (
  'name' => 'cases_contacts_1',
  'type' => 'link',
  'relationship' => 'cases_contacts_1',
  'source' => 'non-db',
  'module' => 'Cases',
  'bean_name' => 'Case',
  'vname' => 'LBL_CASES_CONTACTS_1_FROM_CASES_TITLE',
  'id_name' => 'cases_contacts_1cases_ida',
);
$dictionary["Contact"]["fields"]["cases_contacts_1_name"] = array (
  'name' => 'cases_contacts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CASES_CONTACTS_1_FROM_CASES_TITLE',
  'save' => true,
  'id_name' => 'cases_contacts_1cases_ida',
  'link' => 'cases_contacts_1',
  'table' => 'cases',
  'module' => 'Cases',
  'rname' => 'name',
);
$dictionary["Contact"]["fields"]["cases_contacts_1cases_ida"] = array (
  'name' => 'cases_contacts_1cases_ida',
  'type' => 'link',
  'relationship' => 'cases_contacts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_CASES_CONTACTS_1_FROM_CASES_TITLE',
);
