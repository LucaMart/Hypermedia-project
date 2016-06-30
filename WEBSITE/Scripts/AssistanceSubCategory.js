$(document).bind("mobileinit", function () {
$.support.cors = true;
$.mobile.allowCrossDomainPages = true; });

$(document).ready(fun);

function fun(){
    $.ajax({
            method: "POST",
            crossDomain: true,
            url: "http://hypermediatim.altervista.org/PHP/AssistanceSubCategory.php",
            data: {
                id: id
            },
            success: function(response){
                var result = JSON.parse(response);
                var i;
                var html = "";
                for(i=0; i < result.length; i++){
                    var c;
                    if(i%2==0){
                        html+="<div class=\"row\">";
                    }
                    html+="<div class=\"cell\">";
                    html+="<div class=\"cellcontent\">";
                    html+="<h2 class=\"title\">"+result[i][0]+"</h2>";
                    html+="<ul class=\"list\">";
                    for(c=1; c<result[i].length; c+=2){
                        html+="<li class=\"element\"><a class=\"link\" href=\"AssistanceTopic.html?"+result[i][c+1]+"\">"+result[i][c]+"</a></li>";
                    }
                    html+="</ul>";
                    html+="</div>";
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
    });
}
