<!-- MenuGrid -->
<section class="large-menu-grid  hidden-print">
	<div class="container">
		<ul>
			<% loop $MenuGrid %>
			<li class="<% if $Pos == 1 %>grid-sizer <% end_if %>  col-xs-12 col-sm-6 col-md-4"><a href="$Link">$MenuTitle</a></li>
			<% end_loop %>
		</ul>
	</div>
</section><!-- MenuGrid ends -->
