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
            $("#faq").attr('href', "FAQ.html?"+id);
            if(array[0].ButtonName != null){
                $("#button").append(array[0].ButtonName);
                var button = encodeURI("SmartLifeService.html?service="+array[0].ButtonName);
                $('#button').attr("href", button);
            }
            for(i=0; i<array.length;i++){
                index+="<li><a class=\"indexelement\" href=\"#\"  onClick=\"link_click()\">"+array[i].Title+"</a></li>";
                topic+="<div class=\"topic\">";
                topic+="<h4 class=\"topictitle\">"+array[i].Title+"</h4>";
                topic+="<p class=\"topictext\">"+array[i].Content+"</p>";
                topic+="</div>";
            }
            
            $("#indexlist").append(index);
            $("#servicecontainer").append(topic);
        },
        error: function(response, error){
            console.log(error);
            $("#container-fluid").append("Error");
        }
        
    })
}

function link_click(){
    alert("Ok");
    
    /*$('#servicecontainer').animate({
        scrollTop: $("#elementtoScrollToID").offset().top
    }*/
}