<% include Hotactions %>

 <div class="container content">
            <div class="row-fluid">  
 				
              
					<% include Sidebar %>
				

    
				<% if $PagePhoto %>
				<div class="col-sm-12 col-md-4">
                	<% if $PagePhoto %>
						<img src="$PagePhoto.SetWidth(350).URL" title="$PagePhoto.Title" alt="$Title" class="img-responsive img-thumbnail PagePhoto">
					<% end_if %>
					<% if $CalltoActionLink %>
						<a href="$CalltoActionLink.Link" class="btn btn-primary btn-lg btn-block btnaction">$CalltoAction</a>
					<% end_if %> 
               </div>
			   <% end_if %> 

                <div class="col-sm-12 <% if $PagePhoto %>col-md-5<% else %>col-sm-9<% end_if %>">
                	<h1>APK check voor: $Kenteken</h1>


						<% if $APKdays > 61 %>
							<div class="alert alert-success" role="alert">Uw auto hoeft pas over <strong>$APKdays dagen</strong> APK gekeurd te zijn. <a href="{$BaseHref}contact" class="btn btn-danger pull-right">Maak een afspraak</a></div>
						<% else_if $APKdays < 30 && $APKdays > 15 %>
							<div class="alert alert-warning" role="alert">Laat uw auto APK keuren. U heeft nog <strong>$APKdays dagen</strong> de tijd. <a href="{$BaseHref}contact" class="btn btn-danger pull-right">Maak een afspraak</a></div>
						<% else %>
							<div class="alert alert-danger" role="alert">Laat uw auto zo snel mogelijk APK keuren. <a href="{$BaseHref}contact" class="btn btn-danger pull-right">Maak een afspraak</a></div>
						<% end_if %>
						
						<div class="panel panel-info">
						  <div class="panel-heading">
							<h3 class="panel-title">Voertuiggegevens</h3>
						  </div>
							<table class="table table-striped">
								<tr><td width="25%">Merk</td><td>$RdwData.Merk</td></tr>
								<tr><td width="25%">Type</td><td>$RdwData.Handelsbenaming</td></tr>
								<tr><td width="25%">APK geldig tot</td><td>$APK</td></tr>
							</table>
						</div>
               </div>
              
				<div class="clearfix"></div>
            
         </div>
      </div>