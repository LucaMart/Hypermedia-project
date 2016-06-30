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
            category : "TV&Entertainment"
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var services=JSON.parse(response);
            console.log("Response parsed successfully");

            var tvServices="";
            var readingServices="";
            var otherServices="";

            for(var i=0;i<services.length;i++){

                var name = services[i].Name;
                var subcategory = services[i].Subcategory;
                var imagePath = services[i].SLImagePath;

                if (subcategory=="TV"){
                tvServices+=
                    "<div class=\"product col-xs-12 col-md-push-1 col-md-2\">"+
                    "<a href=\"SmartLifeService.html?service="+name+"\""+">"+name+"</a>"+
                    "<img src=\""+imagePath+"\"/>"+
                    "</div>";
                }
                else
                if (subcategory=="TIM Reading"){
                    readingServices+=
                        "<div class=\"product col-xs-12 col-sm-push-1 col-sm-3\">"+
                        "<a href=\"SmartLifeService.html?service="+name+"\""+">"+name+"</a>"+
                        "<img src=\""+imagePath+"\"/>"+
                        "</div>";
                }
                else
                {
                    otherServices+=
                        "<div class=\"product col-xs-12 col-sm-push-1 col-sm-3\">"+
                        "<a href=\"SmartLifeService.html?service="+name+"\""+">"+name+"</a>"+
                        "<img src=\""+imagePath+"\"/>"+
                        "</div>";
                }

            }

            console.log(tvServices); console.log(readingServices); console.log(otherServices);
            $('#TV').append(tvServices);
            $('#TIMReading').append(readingServices);
            $('#OtherSubcategories').append(otherServices);
        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
