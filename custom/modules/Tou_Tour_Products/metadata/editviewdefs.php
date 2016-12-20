<?php
$module_name = 'Tou_Tour_Products';
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
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 
          array (
            'name' => 'created_by_name',
            'label' => 'LBL_CREATED',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'product_type_c',
            'studio' => 'visible',
            'label' => 'LBL_PRODUCT_TYPE',
          ),
          1 => 
          array (
            'name' => 'unique_code_c',
            'label' => 'LBL_UNIQUE_CODE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'advertised_price_c',
            'label' => 'LBL_ADVERTISED_PRICE',
          ),
          1 => 
          array (
            'name' => 'quantity_c',
            'label' => 'LBL_QUANTITY',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'brief_description_c',
            'studio' => 'visible',
            'label' => 'LBL_BRIEF_DESCRIPTION',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'detailed_description_c',
            'studio' => 'visible',
            'label' => 'LBL_DETAILED_DESCRIPTION',
          ),
        ),
      ),
    ),
  ),
);
?>
