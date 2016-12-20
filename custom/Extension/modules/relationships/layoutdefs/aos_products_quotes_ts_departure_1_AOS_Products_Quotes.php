<?php
 // created: 2016-11-02 08:15:46
$layout_defs["AOS_Products_Quotes"]["subpanel_setup"]['aos_products_quotes_ts_departure_1'] = array (
  'order' => 100,
  'module' => 'ts_Departure',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_AOS_PRODUCTS_QUOTES_TS_DEPARTURE_1_FROM_TS_DEPARTURE_TITLE',
  'get_subpanel_data' => 'aos_products_quotes_ts_departure_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
