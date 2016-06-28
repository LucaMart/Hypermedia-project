
$(document).ready(loadPage);


function loadPage(){
    var id=1;

    ourDevice = ourDevice.replace(/%20/g," ");
    console.log(ourDevice);

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/Device.php", //Relative or absolute path to file.php file
        data: {
            deviceName: ourDevice
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var device = JSON.parse(response);
            console.log("Response parsed successfully");

            var name = device[0].Name;
            var imagePath = device[0].ImagePath;
            var characteristics = device[0].Characteristics;
            var price= device[0].Price;
            var vendor = device[0].Vendor;
            var model = device[0].Model;
            var includedDiv = device[0].IncludedInThePrice;
            var specsDiv = device[0].Specifications;
            var category = device[0].Category;
            var otherColors = device[0].AdditionalColors;

            console.log(specsDiv);

            $('title').html(name);
            $('#productName').html(name);
            $('#productImageDiv').html("<img src=\""+imagePath+"\">"+"</img>");
            $('#productCharacteristics').html(characteristics);

            $('#priceDiv').html(
                "<span>"+price+"</span>"+
                 "<input type=\"button\" value=\"Add to Basket\" onclick=\" \"/>");

            $('#productVendorAndModel').html(
                "<p><span>"+vendor+"</span>&nbsp;:&nbsp;<span>"+model+"</span></p>");

            $('#IncludedInPrice').html(includedDiv);
            $('#Specifications').html(specsDiv);

            $('.breadcrumb .active').html(name);
            $('#categoryBreadcrumb').html(category);

            switch(category) {
                case "TV and SmartLiving":
                    $('#categoryBreadcrumb').attr("href", "Devices-TVAndSmartLiving.html");
                    break;
                case "Smartphones And Phones":
                    $('#categoryBreadcrumb').attr("href", "Devices-SmartphonesAndPhones.html");
                    break;
                default:
                    break;
            }

            $('.toClick').click();

            if(otherColors==1){
                ajaxCallForColors();
            }

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
        url: "./PHP/Device-RelatedSL.php", //Relative or absolute path to file.php file
        data: {
            device: ourDevice
            },

        success: function(response) {
            var SLServices = JSON.parse(response);
            console.log(JSON.parse(response));
            console.log("Response parsed successfully");
            var name; var category;

            $('#RelatedServices').append("<h4>SmartLife Services</h4>");

            for(var i=0; i<SLServices.length; i++){
                name= SLServices[i].SLName;
                category= SLServices[i].SLCategory;
                linkName= name.replace(" ", "%20");

                $('#RelatedServices').append(
                    category+" : "+
                    "<a href=\""+"SmartLifeService.html?service="+linkName+
                    "\">"+name+"</a><br/>");
            }
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
        url: "./PHP/Device-RelatedAS.php", //Relative or absolute path to file.php file
        data: {
            device: ourDevice
            },

        success: function(response) {
            var assistanceServices = JSON.parse(response);
            console.log(JSON.parse(response));
            console.log("Response parsed successfully");
            var name; var category; var subcategory; var id;

            $('#RelatedServices').append("<h4>Assistance Services</h4>");

            for(var i=0; i<assistanceServices.length; i++){
                name= assistanceServices[i].ASName;
                category= assistanceServices[i].ASCategory;
                subcategory= assistanceServices[i].ASsubcategory;
                id = assistanceServices[i].ID;

                var newService =
                    category+" : "+subcategory+" : "+
                    "<a href=\""+"AssistanceTopic.html?"+id+"\">"+name+
                    "</a><br/>";
                console.log(newService);
                $('#RelatedServices').append(newService);

            }

            },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
