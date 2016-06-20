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
                for (i = 0; i < categories.length; i++){    
                    var title = categories[i].Category;
                    var id = categories[i].ID;
                    var imagePath = "Images/Assistance services/Categories/"+title+".png";
                    if(i%2){
                        rcol+="<div class=\"content\">";
                        rcol+="<img class=\"asimg\" src=\""+imagePath+"\" href=\"#\"/>";
                        rcol+="<p class=\"title\">"+title+"</p>";
                        rcol+="</div>";
                    }else{
                        lcol+="<div class=\"content\">";
                        lcol+="<img class=\"asimg\" src=\""+imagePath+"\" href=\"#\"/>";
                        lcol+="<p class=\"title\">"+title+"</p>";
                        lcol+="</div>";
                    }
                }
                lcol+="</div>";
                rcol+="</div>";
                $('#rows').append(lcol);
                $('#rows').append(rcol);
            },
            error: function(response, error){
                console.log(error);
            }
    });
    
}