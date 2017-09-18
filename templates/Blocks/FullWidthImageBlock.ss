<!-- FullWidthImageBlock -->
<% with $Image %>
<div class="container">
	<div class="row">
		<div class="col-md-12 subpage-banner ">
                <div  class="<% if $Up.UseFocuspoint %>focuspoint<% end_if %> focusarea"  data-focus-x="$FocusX" data-focus-y="$FocusY" data-image-w="$Width" data-image-h="$Height" > 
        			<img src="$Link" class="img-responsive" alt="{$Title}">
                </div>
		</div>
	</div>
</div><!-- FullWidthImageBlock end -->
<% end_with %>