<?php
$module_name = 'ts_Passenger';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'lbl_contact_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'last_name',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 'phone_mobile',
          1 => 
          array (
            'name' => 'lead_passenger_c',
            'label' => 'LBL_LEAD_PASSENGER',
          ),
        ),
        2 => 
        array (
          0 => 'email1',
        ),
        3 => 
        array (
          0 => '',
        ),
      ),
    ),
  ),
);
?>
