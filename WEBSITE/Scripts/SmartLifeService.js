$(document).ready(loadPage);

function loadPage(){
    var id=1;

    ourService = ourService.replace(/%20/g," ");
    $('title').html(ourService);

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/SmartLifeService.php", //Relative or absolute path to file.php file
        data: {
            service: ourService
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var SLService = JSON.parse(response);
            console.log("Response parsed successfully");

            var name = SLService[0].Name;
            var descriptionDiv = SLService[0].Description;
            console.log(name); console.log(descriptionDiv);

        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
