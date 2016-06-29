$(document).ready(fun);

function fun(){
    $('#button').attr("href", "AssistanceTopic.html?"+id);
    $.ajax({
        method: "POST",
        url: "http://hypermediatim.altervista.org/PHP/FAQ.php",
        data: {
            id : id
        },
        success: function(response){
            var array = JSON.parse(response);
            var i;
            var topic = "";
            $("title").append(array[0].Name);
            $("#title").append(array[0].Name);
            $('#button').append(array[0].Name);
            $('#button').attr("href", "AssistanceTopic.html?"+id);
            for(i=0; i<array.length;i++){
                topic+="<div class=\"topic\">";
                topic+="<h4 class=\"topictitle\">"+array[i].Question+"</h4>";
                topic+="<p class=\"topictext\">"+array[i].Answer+"</p>";
                topic+="</div>";
            }
            $("#servicecontainer").append(topic);
        },
        error: function(response, error){
            console.log(error);
        }  
    })
    
}
