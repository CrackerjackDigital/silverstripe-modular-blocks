

<section class="carousel-box">
    <div class="container">
        <div class="company-carousel">
            <% loop $Slides %>
            <div><a  href="$ExternalLink"><img data-toggle="tooltip" alt="{$Title}" Title="$Title" src="$Image.PaddedImage(130,65).Link"></a></div>
            <% end_loop %>

        </div>
    </div>
</section>
