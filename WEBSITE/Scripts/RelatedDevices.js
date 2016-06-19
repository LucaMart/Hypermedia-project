$(document).ready(loadPage);

function loadPage(){
    var id=1;

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/RelatedDevices.php", //Relative or absolute path to file.php file
        data: {
            type: sessionStorage.getItem("ourType"),
            serviceIdentifier: sessionStorage.getItem("ourServiceIdentifier")
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var devices = JSON.parse(response);
            console.log("Response parsed successfully");
            var listOfDevicesDivs="";

            for(var i=0;i<devices.length;i++){
                var name = devices[i].Name;
                var price = devices[i].Price;
                var imagePath = devices[i].imagePath;

                console.log(name);

                listOfDevicesDivs+=
                    "<div class= \"device col-xs-12 col-sm-3\">"+
                    "<img src=\""+imagePath+"\">"+"</img>"+
                    "<a href=\"Device.html?device="+name+"\""+">"+name+"</a>"+
                    "<p>"+price+"</p>"+
                    "</div>";

            }

            console.log(listOfDevicesDivs);
            $('#mainReceiver').append(listOfDevicesDivs);

        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
