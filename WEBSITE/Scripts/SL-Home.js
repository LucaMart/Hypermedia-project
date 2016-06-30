 $(document).bind("mobileinit", function () {
$.support.cors = true;
$.mobile.allowCrossDomainPages = true; });

$(document).ready(loadPage);

function loadPage(){
    var id=1;

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://hypermediatim.altervista.org/PHP/SL-ViewCategory.php", //Relative or absolute path to file.php file
        data: {
            category : "Home"
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var services=JSON.parse(response);
            console.log("Response parsed successfully");


            for(var i=0;i<services.length;i++){

                var name = services[i].Name;
                var introduction = services[i].Introduction;
                var imagePath = services[i].SLImagePath;
                var serviceDiv;

                serviceDiv=
                    "<div>"+
                        "<h3>"+name+"</h3>"+
                        "<p>"+introduction+"</p>"+
                        "<a href=\"SmartLifeService.html?service="+name+"\""+">"+"More Details"+"</a>"+
                        "<img src=\""+imagePath+"\"/>"+
                    "</div>";
                console.log(serviceDiv);
               if (i%2==0){
                   $('#homeServicesDiv1').append(serviceDiv);
               } else {
                   $('#homeServicesDiv2').append(serviceDiv);
               }

            }


        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
