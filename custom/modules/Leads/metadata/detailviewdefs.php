<?php
$viewdefs ['Leads'] = 
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
          3 => 
          array (
            'customCode' => '{if $bean->aclAccess("edit") && !$DISABLE_CONVERT_ACTION}<input title="{$MOD.LBL_CONVERTLEAD_TITLE}" accessKey="{$MOD.LBL_CONVERTLEAD_BUTTON_KEY}" type="button" class="button" onClick="document.location=\'index.php?module=Leads&action=ConvertLead&record={$fields.id.value}\'" name="convert" value="{$MOD.LBL_CONVERTLEAD}">{/if}',
            'sugar_html' => 
            array (
              'type' => 'button',
              'value' => '{$MOD.LBL_CONVERTLEAD}',
              'htmlOptions' => 
              array (
                'title' => '{$MOD.LBL_CONVERTLEAD_TITLE}',
                'accessKey' => '{$MOD.LBL_CONVERTLEAD_BUTTON_KEY}',
                'class' => 'button',
                'onClick' => 'document.location=\'index.php?module=Leads&action=ConvertLead&record={$fields.id.value}\'',
                'name' => 'convert',
                'id' => 'convert_lead_button',
              ),
              'template' => '{if $bean->aclAccess("edit") && !$DISABLE_CONVERT_ACTION}[CONTENT]{/if}',
            ),
          ),
          4 => 'FIND_DUPLICATES',
          5 => 
          array (
            'customCode' => '<input title="{$APP.LBL_MANAGE_SUBSCRIPTIONS}" class="button" onclick="this.form.return_module.value=\'Leads\'; this.form.return_action.value=\'DetailView\';this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'Subscriptions\'; this.form.module.value=\'Campaigns\'; this.form.module_tab.value=\'Leads\';" type="submit" name="Manage Subscriptions" value="{$APP.LBL_MANAGE_SUBSCRIPTIONS}">',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_MANAGE_SUBSCRIPTIONS}',
              'htmlOptions' => 
              array (
                'title' => '{$APP.LBL_MANAGE_SUBSCRIPTIONS}',
                'class' => 'button',
                'id' => 'manage_subscriptions_button',
                'onclick' => 'this.form.return_module.value=\'Leads\'; this.form.return_action.value=\'DetailView\';this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'Subscriptions\'; this.form.module.value=\'Campaigns\'; this.form.module_tab.value=\'Leads\';',
                'name' => '{$APP.LBL_MANAGE_SUBSCRIPTIONS}',
              ),
            ),
          ),
          'AOS_GENLET' => 
          array (
            'customCode' => '<input type="button" class="button" onClick="showPopup();" value="{$APP.LBL_GENERATE_LETTER}">',
          ),
        ),
        'headerTpl' => 'modules/Leads/tpls/DetailViewHeader.tpl',
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
          'file' => 'modules/Leads/Lead.js',
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
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ADVANCED' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ASSIGNMENT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'LBL_CONTACT_INFORMATION' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'company_c',
            'studio' => 'visible',
            'label' => 'LBL_COMPANY',
          ),
          1 => 
          array (
            'name' => 'countries_of_interest_c',
            'studio' => 'visible',
            'label' => 'LBL_COUNTRIES_OF_INTEREST',
          ),
        ),
        1 => 
        array (
          0 => 'phone_mobile',
          1 => 'phone_work',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'trip_start_date_c',
            'label' => 'LBL_TRIP_START_DATE',
          ),
          1 => 
          array (
            'name' => 'trip_end_date_c',
            'label' => 'LBL_TRIP_END_DATE',
          ),
        ),
        3 => 
        array (
          0 => 'email1',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'travelled_before_c',
            'studio' => 'visible',
            'label' => 'LBL_TRAVELLED_BEFORE',
          ),
          1 => 
          array (
            'name' => 'skype_c',
            'label' => 'LBL_SKYPE',
          ),
        ),
        5 => 
        array (
          0 => 'description',
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'adults_c',
            'label' => 'LBL_ADULTS',
          ),
          1 => 
          array (
            'name' => 'childrens_c',
            'label' => 'LBL_CHILDRENS',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'baby_c',
            'label' => 'LBL_BABY',
          ),
          1 => 
          array (
            'name' => 'infant_c',
            'label' => 'LBL_INFANT',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'double_rooms_c',
            'label' => 'LBL_DOUBLE_ROOMS',
          ),
          1 => 
          array (
            'name' => 'single_rooms_c',
            'label' => 'LBL_SINGLE_ROOMS',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'triple_room_c',
            'label' => 'LBL_TRIPLE_ROOM',
          ),
          1 => 
          array (
            'name' => 'quad_room_c',
            'label' => 'LBL_QUAD_ROOM',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'quint_room_c',
            'label' => 'LBL_QUINT_ROOM',
          ),
        ),
      ),
      'LBL_PANEL_ADVANCED' => 
      array (
        0 => 
        array (
          0 => 'status',
          1 => 'lead_source',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'city_1_c',
            'label' => 'LBL_CITY_1',
          ),
          1 => 
          array (
            'name' => 'no_of_nights_1_c',
            'label' => 'LBL_NO_OF_NIGHTS_1',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'city_2_c',
            'label' => 'LBL_CITY_2',
          ),
          1 => 
          array (
            'name' => 'no_of_nights_2_c',
            'label' => 'LBL_NO_OF_NIGHTS_2',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'city_3_c',
            'label' => 'LBL_CITY_3',
          ),
          1 => 
          array (
            'name' => 'no_of_nights_3_c',
            'label' => 'LBL_NO_OF_NIGHTS_3',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'city_4_c',
            'label' => 'LBL_CITY_4',
          ),
          1 => 
          array (
            'name' => 'no_of_nights_4_c',
            'label' => 'LBL_NO_OF_NIGHTS_4',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'transfer_mode_c',
            'studio' => 'visible',
            'label' => 'LBL_TRANSFER_MODE',
          ),
          1 => 
          array (
            'name' => 'tour_mode_c',
            'studio' => 'visible',
            'label' => 'LBL_TOUR_MODE',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'special_occassion_c',
            'label' => 'LBL_SPECIAL_OCCASSION',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'tour_details_c',
            'studio' => 'visible',
            'label' => 'LBL_TOUR_DETAILS',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'comments_and_requests_c',
            'studio' => 'visible',
            'label' => 'LBL_COMMENTS_AND_REQUESTS',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'flight_details_c',
            'studio' => 'visible',
            'label' => 'LBL_FLIGHT_DETAILS',
          ),
        ),
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'primary_address_street',
            'label' => 'LBL_PRIMARY_ADDRESS',
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'primary',
            ),
          ),
          1 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'agent_name_c',
            'label' => 'LBL_AGENT_NAME',
          ),
          1 => 
          array (
            'name' => 'company_name_c',
            'label' => 'LBL_COMPANY_NAME',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'agent_email_id_c',
            'label' => 'LBL_AGENT_EMAIL_ID',
          ),
          1 => 
          array (
            'name' => 'agent_city_c',
            'label' => 'LBL_AGENT_CITY',
          ),
        ),
      ),
    ),
  ),
);
?>
