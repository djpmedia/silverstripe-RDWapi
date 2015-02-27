<?php 

class RdwExtension extends Extension {
	
	private static $allowed_actions = array('RdwForm');
		
	public function RdwForm() {
		$fields = new FieldList(
			TextField::create('kenteken')->addExtraClass('pull-left')->setAttribute('placeholder', 'Uw kenteken')
		);
	
		$submit = new FormAction("doRdwForm");
			//Set it to use button
		$submit->useButtonTag = true;
		$submit->setButtonContent('<span class="glyphicon glyphicon-search" aria-hidden="true"></span>');
		
		$actions = new FieldList($submit->addExtraClass('btn btn-default pull-right'));
	
		$form = new Form($this->owner, 'RdwForm', $fields, $actions);
		$form->setTemplate('RDW');
	
		return $form;
	}
	

	
	public function doRdwForm($data, $form) {
				$kenteken = preg_replace('/[^A-Z0-9]/', '', strtoupper($data['kenteken']));
            $accountKey = 's6vyh9OmiXmPNVGoGFokaLye+gJ6f8/bPOD0QmT9bKA';
			   $ServiceRootURL = 'https://api.datamarket.azure.com/opendata.rdw/VRTG.Open.Data/v1/';
			   $WebSearchURL = $ServiceRootURL . 'KENT_VRTG_O_DAT?$format=json&$filter=Kenteken%20eq%20';
			   $request = $WebSearchURL . urlencode( '\'' . $kenteken . '\'');
			   $ch = curl_init($request);
				curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
				curl_setopt($ch, CURLOPT_USERPWD,  $accountKey . ":" . $accountKey);
				curl_setopt($ch, CURLOPT_TIMEOUT, 30);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
				$r = curl_exec($ch);
				$json = json_decode($r, true);
			 $Data = array(
                'RdwData' => $json['d']['results'][0],
				  'Kenteken' => $data['kenteken'],
            );
			$APKdate = date('d-m-Y', preg_replace('/[^0-9]/', '', substr($json['d']['results'][0]['VervaldatumAPK'], 0, -5) ));
			$start_date = new DateTime(date('Y-m-d H:i:s'));
			$since_start = $start_date->diff(new DateTime(date('Y-m-d', preg_replace('/[^0-9]/', '', substr($json['d']['results'][0]['VervaldatumAPK'], 0, -5))) .' 00:00:00'));
			//print_r($since_start->days.'');
			
			Session::set('RdwData', $json['d']['results'][0]);
			Session::set('Kenteken', $data['kenteken']);
			Session::set('APK', $APKdate);
			Session::set('APKdays', $since_start->days);
            
            
            return $this->owner->redirect(Director::baseURL().'rdw');
        }
	
}