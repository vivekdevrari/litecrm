<?php
$module_name = 'ts_Passenger';
$viewdefs [$module_name] = 
array (
  'EditView' => 
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
        'LBL_EMAIL_ADDRESSES' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_contact_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'trip_name_c',
            'studio' => 'visible',
            'label' => 'LBL_TRIP_NAME',
          ),
          1 => 'last_name',
        ),
        1 => 
        array (
          0 => 'phone_mobile',
          1 => 'assigned_user_name',
        ),
        2 => 
        array (
          0 => 'description',
        ),
        3 => 
        array (
          0 => '',
          1 => '',
        ),
      ),
      'lbl_email_addresses' => 
      array (
        0 => 
        array (
          0 => 'email1',
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'lead_passenger_c',
            'label' => 'LBL_LEAD_PASSENGER',
          ),
          1 => 
          array (
            'name' => 'nationality_c',
            'label' => 'LBL_NATIONALITY',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'passenger_role_c',
            'studio' => 'visible',
            'label' => 'LBL_PASSENGER_ROLE',
          ),
          1 => 
          array (
            'name' => 'departure_gateway_c',
            'studio' => 'visible',
            'label' => 'LBL_DEPARTURE_GATEWAY',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'airline_c',
            'studio' => 'visible',
            'label' => 'LBL_AIRLINE',
          ),
          1 => 
          array (
            'name' => 'air_ticket_no_c',
            'label' => 'LBL_AIR_TICKET_NO',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'deviations_c',
            'label' => 'LBL_DEVIATIONS',
          ),
          1 => 
          array (
            'name' => 'special_request_c',
            'label' => 'LBL_SPECIAL_REQUEST',
          ),
        ),
      ),
    ),
  ),
);
?>
