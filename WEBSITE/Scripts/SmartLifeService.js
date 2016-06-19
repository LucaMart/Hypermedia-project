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
                            +"<img id=\"imageLink\" href=\"#\" src=\""+productsImage+"\"/>"
                        +"</div>";
            }

            $('#mobileDiv').html(div2);
            $('#sideDiv').html(div2);

        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
