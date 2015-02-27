<?php
class RdwPage extends Page {
	private static $db = array(
    );	
}
class RdwPage_Controller extends Page_Controller {
	
	public function getKenteken()
    {
        if($kenteken = strtoupper(Session::get('Kenteken'))){
            //Session::clear('Kenteken');
            return $kenteken;
        }
    }
	
	public function getAPK()
    {
        if($apk = strtoupper(Session::get('APK'))){
            //Session::clear('Kenteken');
            return $apk;
        }
    }
	public function getAPKdays()
    {
        if($apk = strtoupper(Session::get('APKdays'))){
            //Session::clear('Kenteken');
            return $apk;
        }
    }

	public function getRdwData()
    {
        if($data = Session::get('RdwData')){
			$array = new ArrayData($data);
            //Session::clear('RdwData');
            return $array;
        }
    }
}