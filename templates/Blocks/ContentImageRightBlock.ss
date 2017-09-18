<div class="container">
	<div class="row has-image">

			<% if $ImageSize == 60 %>
			<div class=" col-md-7">
			<% else %>
			<div class=" col-md-6">
			<% end_if %>
				<div class=" left-text-box colapsible" id="textboxID{$ID}">
					<% if $Title %><h2>$Title</h2><% end_if %>

					$Content
				</div>
                   <% if $ContentCount > 960 %>
	                        <%-- <a href="" class="expand-content" data-target="textboxID{$ID}"> Expand + </a> --%>
                    <% end_if %>
			</div>

				<% if $ImageSize == 60 %>
				<div class=" col-md-5 image-box">
				<% else %>
				<div class=" col-md-6 image-box">
				<% end_if %>
					<img src="$Image.SetWidth(560).Link">
					<div class="credit">$Credit</div>
				</div>
			

	</div>
</div>
