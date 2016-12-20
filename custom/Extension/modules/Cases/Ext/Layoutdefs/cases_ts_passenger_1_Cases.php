<?php
 // created: 2016-08-24 06:04:41
$layout_defs["Cases"]["subpanel_setup"]['cases_ts_passenger_1'] = array (
  'order' => 100,
  'module' => 'ts_Passenger',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_CASES_TS_PASSENGER_1_FROM_TS_PASSENGER_TITLE',
  'get_subpanel_data' => 'cases_ts_passenger_1',
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
