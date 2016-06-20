$(document).ready(loadPage);

function loadPage(){
    var id=1;

    var serviceType = sessionStorage.getItem("ourType");
    var filePathPhp="";

    if (serviceType=="AssistanceService"){
        filePathPhp="./PHP/RelatedDevices-AS.php";
    }
    if (serviceType=="SmartLifeService"){
        filePathPhp="./PHP/RelatedDevices-SL.php";
    }


    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: filePathPhp, //Relative or absolute path to file.php file
        data: {
            serviceIdentifier: sessionStorage.getItem("ourServiceIdentifier")
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var devices = JSON.parse(response);
            console.log("Response parsed successfully");

            var listOfDevicesDivs="";
            var serviceName = devices[0].ServiceName;

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
            $('#ServiceTitle').html(serviceName);
            $('#mainReceiver').append(listOfDevicesDivs);

        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
