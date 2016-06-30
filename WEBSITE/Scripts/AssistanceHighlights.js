 $(document).bind("mobileinit", function () {
$.support.cors = true;
$.mobile.allowCrossDomainPages = true; });

$(document).ready(fun);

function fun(){
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://hypermediatim.altervista.org/PHP/AssistanceHighlights.php",
        success: function(response){
                var result = JSON.parse(response);
                var i;
                var html = "";
                for(i=0; i < result.length; i++){
                    if(i%2==0){
                        html+="<div class=\"row\">";
                    }
                    html+="<div class=\" col col-xs-offset-1 col-xs-10 col-md-offset-2 col-md-4\">";
                    html+="<a class=\"element\" href=\"AssistanceTopic.html?"+result[i].ASServiceID+"\">"+result[i].Title+"</a>";
                    html+="</div>";
                    if(i%2 || i==(result.length-1)){
                        html+="</div>";
                    }
                }
                $('#contentContainer').append(html);
        },
        error: function(response, error){
            console.log(error);
        }
    })
}
