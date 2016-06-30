 $(document).bind("mobileinit", function () {
$.support.cors = true;
$.mobile.allowCrossDomainPages = true; });

$(document).ready(loadPage);

function loadPage(){
    var id=1;

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://hypermediatim.altervista.org/PHP/Homepage.php", //Relative or absolute path to file.php file
        data: {
            featuredType: "SmartLifeService"
            },
        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var service = JSON.parse(response);
            console.log("Response parsed successfully");

            var name = service[0].Name;
            var intro = service[0].Introduction;
            var imagePath = service[0].SLImagePath;

            $('#serviceTitle').html(name);
            $('#serviceImage').attr("src",imagePath);
            $('#serviceIntro').html(intro);

            var linkName = name.replace(/" "/g, "%20");
            $('#serviceLink').attr("href", "SmartLifeService.html?service=" + linkName);


        },
        error: function(request,error)
        {
            console.log(error);
        }
    });




     $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url:  "./PHP/Homepage.php", //Relative or absolute path to file.php file
        data: {
            featuredType: "Project"
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var project = JSON.parse(response);
            console.log("Response parsed successfully");

            var name = project[0].Name;
            var intro = project[0].Introduction;
            var imagePath = project[0].imagePath;

            console.log(name); console.log(intro); console.log(imagePath);

            $('#projectLabel').html(name);
            $('.projectImage').attr("src",imagePath);
            $('#caption').html(intro);



        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
