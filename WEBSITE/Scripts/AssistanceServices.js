$(document).ready(fun);

function fun(){
    
    $.ajax({
            method: "POST",
            url: "PHP/AssistanceServices.php",
            success: function(response){
                var categories = JSON.parse(response);
                var i;
                var lcol = "<div id=\"lcol\">";
                var rcol = "<div id=\"rcol\">";
                //TODO Highlgiths
                for (i = 0; i < categories.length; i++){    
                    //var imgPath = categories[i].;
                    //var link = categories[i].;
                    var title = categories[i].Category;
                    if(i%2){
                        rcol+="<div class=\"content\">";
                        rcol+="<img class=\"asimg\" src=\"\" href=\"#\"/>";
                        rcol+="<p class=\"title\">"+title+"</p>";
                        rcol+="</div>";
                    }else{
                        lcol+="<div class=\"content\">";
                        lcol+="<img class=\"asimg\" src=\"\" href=\"#\"/>";
                        lcol+="<p class=\"title\">"+title+"</p>";
                        lcol+="</div>";
                    }
                }
                lcol+="</div>";
                rcol+="</div>";
                $('#contentContainer').append(lcol);
                $('#contentContainer').append(rcol);
            },
            error: function(response, error){
                $('#contentContainer').append("error");
                console.log(error);
            }
    });
    
}