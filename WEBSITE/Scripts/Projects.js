$(document).ready(loadPage);

function loadPage(){
    var id=1;
    var queryProjects="SELECT Name,imagePath,Content FROM project";

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/WhoWeAre.php", //Relative or absolute path to file.php file
        data: {
            query : queryProjects
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var projects=JSON.parse(response);
            console.log("Response parsed successfully");

            var listOfprojectsDivs="";

            for(var i=0;i<projects.length;i++){
                var name = projects[i].Name;
                var content = projects[i].Content;
                var imagePath = projects[i].imagePath;

                console.log(name);

                listOfprojectsDivs+=
                    "<div class= \"projectDiv col-xs-12\">"+
                    "<div><h4>"+name+"</h4>"+
                    "<img src=\""+imagePath+"\"/>"+
                    "</div>"+
                    content+
                    "</div>";

            }

            console.log(listOfprojectsDivs);
            $('#mainReceiver').append(listOfprojectsDivs);
        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
