<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2016-08-15 08:50:59
$dictionary['ts_Passenger']['fields']['air_ticket_no_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['air_ticket_no_c']['labelValue']='Air Ticket No.';

 

 // created: 2016-08-15 09:12:24
$dictionary['ts_Passenger']['fields']['special_request_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['special_request_c']['labelValue']='Special Request';

 

 // created: 2016-08-15 08:18:21
$dictionary['ts_Passenger']['fields']['acase_id_c']['inline_edit']=1;

 

 // created: 2016-08-15 08:49:49
$dictionary['ts_Passenger']['fields']['airline_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['airline_c']['labelValue']='Airline';

 

 // created: 2016-08-15 08:17:09
$dictionary['ts_Passenger']['fields']['passenger_name_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['passenger_name_c']['labelValue']='Passenger Name';

 

 // created: 2016-11-03 17:09:04
$dictionary['ts_Passenger']['fields']['nationality_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['nationality_c']['labelValue']='Nationality';

 

 // created: 2016-08-15 09:10:22
$dictionary['ts_Passenger']['fields']['deviations_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['deviations_c']['labelValue']='Deviations';

 

 // created: 2016-08-15 08:45:32
$dictionary['ts_Passenger']['fields']['departure_gateway_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['departure_gateway_c']['labelValue']='Departure Gateway';

 

 // created: 2016-08-15 08:17:09
$dictionary['ts_Passenger']['fields']['contact_id_c']['inline_edit']=1;

 

 // created: 2016-08-15 08:18:21
$dictionary['ts_Passenger']['fields']['trip_name_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['trip_name_c']['labelValue']='Trip Name';

 

 // created: 2016-08-15 08:39:46
$dictionary['ts_Passenger']['fields']['passenger_role_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['passenger_role_c']['labelValue']='Passenger Role';

 

 // created: 2016-10-04 07:37:36
$dictionary['ts_Passenger']['fields']['lead_passenger_c']['inline_edit']='1';
$dictionary['ts_Passenger']['fields']['lead_passenger_c']['labelValue']='Lead Passenger';

 

// created: 2016-08-24 06:04:41
$dictionary["ts_Passenger"]["fields"]["cases_ts_passenger_1"] = array (
  'name' => 'cases_ts_passenger_1',
  'type' => 'link',
  'relationship' => 'cases_ts_passenger_1',
  'source' => 'non-db',
  'module' => 'Cases',
  'bean_name' => 'Case',
  'vname' => 'LBL_CASES_TS_PASSENGER_1_FROM_CASES_TITLE',
  'id_name' => 'cases_ts_passenger_1cases_ida',
);
$dictionary["ts_Passenger"]["fields"]["cases_ts_passenger_1_name"] = array (
  'name' => 'cases_ts_passenger_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CASES_TS_PASSENGER_1_FROM_CASES_TITLE',
  'save' => true,
  'id_name' => 'cases_ts_passenger_1cases_ida',
  'link' => 'cases_ts_passenger_1',
  'table' => 'cases',
  'module' => 'Cases',
  'rname' => 'name',
);
$dictionary["ts_Passenger"]["fields"]["cases_ts_passenger_1cases_ida"] = array (
  'name' => 'cases_ts_passenger_1cases_ida',
  'type' => 'link',
  'relationship' => 'cases_ts_passenger_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CASES_TS_PASSENGER_1_FROM_TS_PASSENGER_TITLE',
);

?>