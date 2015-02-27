<h2>Wanneer APK?</h2>
<form $FormAttributes class="KentekenForm">
    <div class="form-group KentekenField">
        $Fields.dataFieldByName(kenteken) 
		<% loop $Actions %>$Field<% end_loop %>
		<div class="clearfix"></div>
    </div>

	 <input class="hidden nolabel" type="hidden" id="Form_Form_SecurityID" name="SecurityID" value="$securityID" />
	 <div class="clearfix"></div>	
</form>

<% require css("rdwapi/css/rdw.css") %>