<?php
 // created: 2016-09-06 02:05:31
$layout_defs["ts_Departure"]["subpanel_setup"]['ts_departure_ts_vendors_1'] = array (
  'order' => 100,
  'module' => 'ts_Vendors',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_TS_DEPARTURE_TS_VENDORS_1_FROM_TS_VENDORS_TITLE',
  'get_subpanel_data' => 'ts_departure_ts_vendors_1',
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
