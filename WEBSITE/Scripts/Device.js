
$(document).ready(loadPage);

function loadPage(){
    var id=1;

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/Device.php", //Relative or absolute path to file.php file
        data: {
            deviceName : ourDevice
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var device = JSON.parse(response);
            console.log("Response parsed successfully");

            var name = device[0].Name;
            var imagePath = device[0].imagePath;
            var characteristics = device[0].Characteristics;
            var price= device[0].Price;


            $('#productName').html(name);
            $('#productImageDiv').html("<img src=\""+imagePath+"\">"+"</img>");
            $('#productCharacteristics').html(characteristics);

            $('#priceDiv').html(
                "<span>"+price+"</span>"+
                 "<input type=\"button\" value=\"Add to Basket\" onclick=\" \"/>")


        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
