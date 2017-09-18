<!--  CarouselBlock -->
<section id="home-slider-section">
	<div id="pagepiling">

		<% loop $Slides.limit(4) %>
		<div class="section" id="section{$Pos}" style="background-position: {$Image.PercentageX}% {$Image.PercentageY}%; background-image:url({$Image.SetWidth(1400).Link});">
			<div class="intro">
				<div class="container">
					<h2>$Title</h2>
					<p><a href="$ResolvedLink.Link"><% if $LinkTitle %> $LinkTitle <% else %> Find Out More <% end_if %> &#62;</a></p>
				</div>
			</div>
		</div>
		<% end_loop %>


		<div class="section" id="HomepageContent">

		</div>
	</div>

</section>

<!--  CarouselBlock ends -->
