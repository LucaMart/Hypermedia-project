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
                index+="<li><a id=\""+array[i].Title+"\" class=\"indexelement\"  onClick=\"link_click(this.id)\" href=\"javaScript:void(0)\" >"+array[i].Title+"</a></li>";
                topic+="<div class=\"topic\">";
                topic+="<h4 id=\""+array[i].Title+"topic\" class=\"topictitle\">"+array[i].Title+"</h4>";
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



function link_click(data){
    var div = data+"topic";
    var element = document.getElementById(div);
    var servicecontainer = document.getElementById("servicecontainer");
    var page = document.getElementById("pageContainer");
    var offset = element.offsetTop - servicecontainer.offsetTop;
    servicecontainer.scrollTop = offset;
    page.scrollTop = element.offsetTop;
}