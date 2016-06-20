$(document).ready(fun);

function fun(){
    
    $.ajax({
        method: "POST",
        url: "PHP/AssistanceTopic.php",
        data: {
            id : id
        },
        success: function(response){
            var array = JSON.parse(response);
            var i;
            var index = "";
            var topic = "";
            $("#title").append(array[0].ASServiceName);
            for(i=0; i<array.length;i++){
                index+="<li><a class=\"indexelement\">"+array[i].Title+"</a></li>";
                topic+="<div class=\"topic\">";
                topic+="<h4 class=\"topictitle\">"+array[i].Title+"</h4>";
                topic+="<p class=\"topictext\">"+array[i].Content+"</p>";
                topic+="</div>";
            }
            
            $("#indexlist").append(index);
            $("#servicecontainer").append(topic);
            $("#button").append("Tim Vision");
        },
        error: function(response, error){
            console.log(error);
            $("#container-fluid").append("Error");
        }
        
    })
}