
<div class="container media-panels">
<div class="row">
<% loop $Blocks.sort(Sort, ASC) %>
<div class="col-md-{$Up.Up.BlockDivision} col-xs-12">
    $Me
</div>
<% end_loop %>
</div>
</div>