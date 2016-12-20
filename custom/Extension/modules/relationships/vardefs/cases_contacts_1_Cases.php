<?php
// created: 2016-11-16 10:23:23
$dictionary["Case"]["fields"]["cases_contacts_1"] = array (
  'name' => 'cases_contacts_1',
  'type' => 'link',
  'relationship' => 'cases_contacts_1',
  'source' => 'non-db',
  'module' => 'Contacts',
  'bean_name' => 'Contact',
  'vname' => 'LBL_CASES_CONTACTS_1_FROM_CONTACTS_TITLE',
  'id_name' => 'cases_contacts_1contacts_idb',
);
$dictionary["Case"]["fields"]["cases_contacts_1_name"] = array (
  'name' => 'cases_contacts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CASES_CONTACTS_1_FROM_CONTACTS_TITLE',
  'save' => true,
  'id_name' => 'cases_contacts_1contacts_idb',
  'link' => 'cases_contacts_1',
  'table' => 'contacts',
  'module' => 'Contacts',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["Case"]["fields"]["cases_contacts_1contacts_idb"] = array (
  'name' => 'cases_contacts_1contacts_idb',
  'type' => 'link',
  'relationship' => 'cases_contacts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_CASES_CONTACTS_1_FROM_CONTACTS_TITLE',
);
