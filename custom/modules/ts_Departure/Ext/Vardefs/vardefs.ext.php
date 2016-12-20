<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2016-08-15 06:27:12
$dictionary['ts_Departure']['fields']['triple_room_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['triple_room_c']['labelValue']='Triple Room';

 

 // created: 2016-08-15 06:24:50
$dictionary['ts_Departure']['fields']['parent_fixed_departure_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['parent_fixed_departure_c']['labelValue']='Parent Fixed Departure';

 

 // created: 2016-08-15 06:32:42
$dictionary['ts_Departure']['fields']['fixed_departure_cost_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['fixed_departure_cost_c']['labelValue']='Fixed Departure Cost';

 

 // created: 2016-08-15 06:14:00
$dictionary['ts_Departure']['fields']['name']['inline_edit']=true;
$dictionary['ts_Departure']['fields']['name']['duplicate_merge']='disabled';
$dictionary['ts_Departure']['fields']['name']['duplicate_merge_dom_value']='0';
$dictionary['ts_Departure']['fields']['name']['merge_filter']='disabled';
$dictionary['ts_Departure']['fields']['name']['unified_search']=false;

 

 // created: 2016-08-15 06:21:28
$dictionary['ts_Departure']['fields']['guests_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['guests_c']['labelValue']='Total No. of Guests';

 

 // created: 2016-08-15 06:15:47
$dictionary['ts_Departure']['fields']['start_date_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['start_date_c']['labelValue']='Fixed Departure Start Date';

 

// created: 2016-09-06 02:04:31
$dictionary["ts_Departure"]["fields"]["ts_departure_cases_1"] = array (
  'name' => 'ts_departure_cases_1',
  'type' => 'link',
  'relationship' => 'ts_departure_cases_1',
  'source' => 'non-db',
  'module' => 'Cases',
  'bean_name' => 'Case',
  'side' => 'right',
  'vname' => 'LBL_TS_DEPARTURE_CASES_1_FROM_CASES_TITLE',
);


 // created: 2016-08-15 06:25:54
$dictionary['ts_Departure']['fields']['single_room_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['single_room_c']['labelValue']='Single Room';

 

 // created: 2016-08-15 06:18:43
$dictionary['ts_Departure']['fields']['rooms_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['rooms_c']['labelValue']='Fixed Departure Capacity (Rooms)';

 

 // created: 2016-08-15 06:16:32
$dictionary['ts_Departure']['fields']['end_date_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['end_date_c']['labelValue']='Fixed Departure End Date';

 

 // created: 2016-08-15 06:31:30
$dictionary['ts_Departure']['fields']['fixed_departure_revenue_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['fixed_departure_revenue_c']['labelValue']='Fixed Departure Revenue';

 

 // created: 2016-09-06 02:10:12
$dictionary['ts_Departure']['fields']['parent_fixed_departure_relat_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['parent_fixed_departure_relat_c']['labelValue']='Parent Fixed Departure';

 

 // created: 2016-08-15 06:29:42
$dictionary['ts_Departure']['fields']['quint_room_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['quint_room_c']['labelValue']='Quint Room';

 

 // created: 2016-08-15 06:14:33
$dictionary['ts_Departure']['fields']['location_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['location_c']['labelValue']='Location';

 

// created: 2016-11-02 08:15:46
$dictionary["ts_Departure"]["fields"]["aos_products_quotes_ts_departure_1"] = array (
  'name' => 'aos_products_quotes_ts_departure_1',
  'type' => 'link',
  'relationship' => 'aos_products_quotes_ts_departure_1',
  'source' => 'non-db',
  'module' => 'AOS_Products_Quotes',
  'bean_name' => 'AOS_Products_Quotes',
  'vname' => 'LBL_AOS_PRODUCTS_QUOTES_TS_DEPARTURE_1_FROM_AOS_PRODUCTS_QUOTES_TITLE',
  'id_name' => 'aos_products_quotes_ts_departure_1aos_products_quotes_ida',
);
$dictionary["ts_Departure"]["fields"]["aos_products_quotes_ts_departure_1_name"] = array (
  'name' => 'aos_products_quotes_ts_departure_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_QUOTES_TS_DEPARTURE_1_FROM_AOS_PRODUCTS_QUOTES_TITLE',
  'save' => true,
  'id_name' => 'aos_products_quotes_ts_departure_1aos_products_quotes_ida',
  'link' => 'aos_products_quotes_ts_departure_1',
  'table' => 'aos_products_quotes',
  'module' => 'AOS_Products_Quotes',
  'rname' => 'name',
);
$dictionary["ts_Departure"]["fields"]["aos_products_quotes_ts_departure_1aos_products_quotes_ida"] = array (
  'name' => 'aos_products_quotes_ts_departure_1aos_products_quotes_ida',
  'type' => 'link',
  'relationship' => 'aos_products_quotes_ts_departure_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_QUOTES_TS_DEPARTURE_1_FROM_TS_DEPARTURE_TITLE',
);


 // created: 2016-08-15 06:20:11
$dictionary['ts_Departure']['fields']['currency_id']['inline_edit']=1;

 

 // created: 2016-09-06 02:10:12
$dictionary['ts_Departure']['fields']['ts_departure_id_c']['inline_edit']=1;

 

 // created: 2016-08-15 06:28:37
$dictionary['ts_Departure']['fields']['quad_room_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['quad_room_c']['labelValue']='Quad Room';

 

// created: 2016-09-06 02:05:09
$dictionary["ts_Departure"]["fields"]["ts_departure_leads_1"] = array (
  'name' => 'ts_departure_leads_1',
  'type' => 'link',
  'relationship' => 'ts_departure_leads_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'side' => 'right',
  'vname' => 'LBL_TS_DEPARTURE_LEADS_1_FROM_LEADS_TITLE',
);


 // created: 2016-08-15 06:26:30
$dictionary['ts_Departure']['fields']['double_room_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['double_room_c']['labelValue']='Double Room';

 

 // created: 2016-08-15 06:17:34
$dictionary['ts_Departure']['fields']['pax_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['pax_c']['labelValue']='Fixed Departure Capacity (Pax)';

 

 // created: 2016-08-15 06:30:34
$dictionary['ts_Departure']['fields']['total_rooms_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['total_rooms_c']['labelValue']='Total No. of Rooms';

 

// created: 2016-09-06 02:05:31
$dictionary["ts_Departure"]["fields"]["ts_departure_ts_vendors_1"] = array (
  'name' => 'ts_departure_ts_vendors_1',
  'type' => 'link',
  'relationship' => 'ts_departure_ts_vendors_1',
  'source' => 'non-db',
  'module' => 'ts_Vendors',
  'bean_name' => 'ts_Vendors',
  'side' => 'right',
  'vname' => 'LBL_TS_DEPARTURE_TS_VENDORS_1_FROM_TS_VENDORS_TITLE',
);


 // created: 2016-08-15 06:20:10
$dictionary['ts_Departure']['fields']['price_c']['inline_edit']='1';
$dictionary['ts_Departure']['fields']['price_c']['labelValue']='Fixed Departure Price/Person';

 
?>