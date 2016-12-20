<?php
$module_name = 'TD_Tour_Details';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
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
            'name' => 'tour_c',
            'studio' => 'visible',
            'label' => 'LBL_TOUR',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'last_name',
            'comment' => 'Last name of the contact',
            'label' => 'LBL_LAST_NAME',
          ),
          1 => 'phone_mobile',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'booking_id_c',
            'label' => 'LBL_BOOKING_ID',
          ),
          1 => 
          array (
            'name' => 'booking_status_c',
            'studio' => 'visible',
            'label' => 'LBL_BOOKING_STATUS',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'customers_c',
            'label' => 'LBL_CUSTOMERS',
          ),
          1 => 
          array (
            'name' => 'hotel_pickup_c',
            'studio' => 'visible',
            'label' => 'LBL_HOTEL_PICKUP',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'sale_value_c',
            'label' => 'LBL_SALE_VALUE',
          ),
          1 => 
          array (
            'name' => 'balance_c',
            'label' => 'LBL_BALANCE',
          ),
        ),
        5 => 
        array (
          0 => 'assigned_user_name',
        ),
        6 => 
        array (
          0 => 'description',
        ),
      ),
      'lbl_email_addresses' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'first_name',
            'comment' => 'First name of the contact',
            'label' => 'LBL_FIRST_NAME',
          ),
          1 => 
          array (
            'name' => 'travel_date_c',
            'label' => 'LBL_TRAVEL_DATE',
          ),
        ),
        1 => 
        array (
          0 => 'email1',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'pickup_dt_c',
            'label' => 'LBL_PICKUP_DT',
          ),
          1 => 
          array (
            'name' => 'meetingpoint_c',
            'label' => 'LBL_MEETINGPOINT',
          ),
        ),
      ),
    ),
  ),
);
?>