//$(document).ready(loadPage);

function startConnection(){
    console.log("I'm ready to load the dynamic elements of the page!");
    var id=1;

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/getDevices.php", //Relative or absolute path to file.php file
        data: {course:id},
        success: function(response) {
            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var devices=JSON.parse(response);
            console.log("Response parsed successfully");
            var el="";
            for(var i=0;i<devices.length;i++){
                console.log(devices[i].Name);
                console.log(devices[i].Category);

                //el+="<div class='course' id='c"+courses[i].id+"'><h2>"+courses[i].title+"</h2><span>"+courses[i].description+"</span></div>";

            }

            //$("body").html(el);
        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
