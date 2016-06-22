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
            var description = SLService[0].Description;
            var category = SLService[0].Category;
            var actAndRules = SLService[0].ActivationAndRules;
            var imagePath = SLService[0].SLImagePath;
            var productsImage = SLService[0].RelatedProductsImagePath;
            console.log(name);

            $('#Description').append(description);
            $('#ActivationAndRules').append(actAndRules);

            var div2= "<div>"
                            +"<img id=\"promo\" src=\""+imagePath+"\"/>"
                            +"<input type=\"button\" onclick=\"\" value=\"Add to Basket\"/>"
                        +"</div>";
            if (productsImage!=null){
                div2 = div2 +
                        "<div id=\"RelatedProductsDiv\">"
                            +"<h4>Related Products</h4>"
                            +"<a id=\"productsLink\" href=\"RelatedDevices.html\">"
                            +"<img id=\"linkImage\" src=\""+productsImage+"\"/></a>"
                        +"</div>";
            }

            $('#serviceName').html(name);
            $('#mobileDiv').html(div2);
            $('#sideDiv').html(div2);

            ///////////Set up Breadcrumbs
            console.log(category);
            $('#breadCategory').html(category);
            $('.breadcrumb .active').html(ourService);
            switch(category){
                case "TV&Entertainment":
                    $('#breadCategory').attr("href","SL-TV&Entertainment.html");
                    break;
                default:
                    break;
            }
            ///////////

            if (typeof(Storage) == "undefined" ) {
                alert("Your browser does not support HTML5 localStorage. Try upgrading.");
            }
            else {
                console.log("Both localStorage and sessionStorage support is there.");
            }

            sessionStorage.setItem("ourType","SmartLifeService");
            sessionStorage.setItem("ourServiceIdentifier",ourService);

        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}

$('#productsLink').click(function(){



});
