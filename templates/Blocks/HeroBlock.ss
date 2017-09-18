 

 <div class="container">
     <div class="row"> 
        <div class="col-md-12  subpage-banner">
             
 
            

            

            <% if $ImageSize == "16:6" %>            
            <div class="hero-description">
               <div class="inner">
                    <% if $Description %><h1><span>$Description</span></h1><% end_if %>
                <% if $ExternalLink %><a href="$ExternalLink?width=640&height=340" rel="prettyPhoto"><i class="arrow_triangle-right_alt2 play-btn"></i></a><% end_if %>
               </div>
            </div>

             <img src="$Image.CroppedImage(1160,350).Link" alt="{$Title}" class="img-responsive">
            <% else %>
            <img src="$Image.CroppedImage(1160,220).Link" alt="{$Title}" class="img-responsive">
            <% end_if %>
 
        
        </div>
     </div>
 </div>
