<?php


if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

class UpdateCaseName
{

    function updateCaseName(&$bean, $event, $arguments)
    {
        // before_save
        /*
        if (empty($bean->name)) {
            $query      = "SELECT name FROM cases order by date_entered desc limit 0,1";
            $dataResult = $GLOBALS['db']->query($query, false);
            $caseName   = "";
            while (($row = $GLOBALS['db']->fetchByAssoc($dataResult)) != null) {
                $caseName = $row['name'];
            }
            if (!empty($caseName)) {
                $nameArr = explode("TRAV", $caseName);
                if (!empty($nameArr[1])) {
                    $nameId   = intval($nameArr[1]);
                    $nameId   = $nameId + 1;
                    $caseName = "TRAV" . $nameId;
                }
            }
            if (!empty($caseName) && strpos($caseName, 'TRAV')!==false) {
                $bean->name = $caseName;
            } else {
                $bean->name = "TRAV30000";
            }
        }
        */
    }
}
