 $(document).bind("mobileinit", function () {
$.support.cors = true;
$.mobile.allowCrossDomainPages = true; });

function changeColor(color){
    console.log(color);
    var newImagePath = sessionStorage.getItem(color);
    $('#productImageDiv').html("<img src=\""+newImagePath+"\">"+"</img>");
}

function ajaxCallForColors(){
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true, //localhost purposes
            url: "http://hypermediatim.altervista.org/PHP/Device-Colors.php", //Relative or absolute path to file.php file
            data: {
                deviceName: ourDevice
                },

            success: function(response) {
                var devicesAndColors = JSON.parse(response);
                console.log(JSON.parse(response));
                console.log("Response parsed successfully");

                var el = "<div id=\"productColors\"><h5>Available Colors : </h5>";
                for (var i=0; i<devicesAndColors.length; i++){
                    var color = devicesAndColors[i].Color;
                    var coloredImagePath = devicesAndColors[i].ColoredImagePath;
                    sessionStorage.setItem(color,coloredImagePath);

                    el+= "<input type=\"button\" style=\"background-color:"+color+
                    "\" onclick=\""+"changeColor(\'"+color+"\')"+"\" />";
                }

                el += "</div>";
                $('#colorsDiv').html(el);
            },
            error: function(request,error)
            {
                console.log(error);
            }
        });
    }
