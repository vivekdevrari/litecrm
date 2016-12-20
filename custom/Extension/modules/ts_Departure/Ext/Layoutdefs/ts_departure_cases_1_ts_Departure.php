<?php
 // created: 2016-09-06 02:04:31
$layout_defs["ts_Departure"]["subpanel_setup"]['ts_departure_cases_1'] = array (
  'order' => 100,
  'module' => 'Cases',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_TS_DEPARTURE_CASES_1_FROM_CASES_TITLE',
  'get_subpanel_data' => 'ts_departure_cases_1',
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
