<!-- FactsBlock -->
<section class="stats-grid">

	<div class="container">
<% if $NumBlocks == 3 %>
		<div class="col-md-4 col-sm-4 green">
			<div class="fact">
				<div class="item"><h3>$FirstBlock.NoHTML</h3></div>
			</div>
		</div>
		<div class="col-md-4 col-sm-4 blue">
			<div class="fact">
				<div class="item"><h3>$SecondBlock.NoHTML</h3></div>
			</div>
		</div>
		<div class="col-md-4  col-sm-4 orange">
			<div class="fact">
				<div class="item"><h3>$ThirdBlock.NoHTML</h3></div>
			</div>
		</div>
<% else_if $NumBlocks = 2 %>
		<div class="col-md-6 col-sm-6 green">
			<div class="fact">
				<div class="item"><h3>$FirstBlock.NoHTML</h3></div>
			</div>
		</div>
		<div class="col-md-6 col-sm-6 blue">
			<div class="fact">
				<div class="item"><h3>$SecondBlock.NoHTML</h3></div>
			</div>
		</div>
<% else_if $NumBlocks = 1 %>
		<div class="col-md-12 green">
			<div class="fact">
				<div class="item"><h3>$FirstBlock.NoHTML</h3></div>
			</div>
		</div>
<% end_if %>
	</div>
</section><!-- FactsBlock end -->