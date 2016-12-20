<?php
$module_name = 'ts_Vendors';
$_object_name = 'ts_vendors';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'SAVE',
          1 => 'CANCEL',
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
      'includes' => 
      array (
        0 => 
        array (
          'file' => 'modules/Accounts/Account.js',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_ACCOUNT_INFORMATION' => 
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
    ),
    'panels' => 
    array (
      'lbl_account_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'vendor_category_c',
            'studio' => 'visible',
            'label' => 'LBL_VENDOR_CATEGORY',
          ),
          1 => 'website',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'phone_office',
          ),
          1 => 'phone_fax',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'cases_ts_vendors_1_name',
            'label' => 'LBL_CASES_TS_VENDORS_1_FROM_CASES_TITLE',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => '',
        ),
      ),
      'lbl_email_addresses' => 
      array (
        0 => 
        array (
          0 => 'email1',
        ),
      ),
    ),
  ),
);
?>
