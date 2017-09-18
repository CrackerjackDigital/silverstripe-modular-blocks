<div class="container">
	<div class="eighty1080">
		<p>Downloads:</p>
			<ul class="content-links">
				<% loop Files %>
					<li>
						<a href="$Link" target="_blank">
							<i class="fbu-align-bottom "></i>
							<p>$Title</p>
							<span>$Extension.UpperCase $Size</span>
						</a>
					</li>
				<% end_loop %>
			</ul>
	</div>
</div>