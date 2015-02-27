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
                	<h1>Voertuig data $Kenteken</h1>

$Kenteken
$RdwData.Kenteken

<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Voertuiggegevens</h3>
  </div>
  <div class="panel-body">
    Panel content
  </div>
</div>

               </div>
              
				<div class="clearfix"></div>
            
         </div>
      </div>