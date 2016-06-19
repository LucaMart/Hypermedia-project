$(document).ready(loadPage);

function loadPage(){
    var id=1;
    var queryTestimonials ="SELECT Title, ImagePath, videoPath, Comment from testimonial"

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/WhoWeAre.php", //Relative or absolute path to file.php file
        data: {
            query : queryTestimonials
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var test=JSON.parse(response);
            console.log("Response parsed successfully");

            var listOftestDivs="";

            for(var i=0;i<test.length;i++){
                var title = test[i].Title;
                var imagePath = test[i].ImagePath;
                var comment = test[i].Comment;

                if (comment==null){comment="";}

                console.log(title);

                testDiv=
                    "<div class= \"testimonialDiv col-xs-12 col-sm-6\">"+
                    "<div><h3>"+title+"</h3>"+
                    "<img src=\""+imagePath+"\"/>"+
                    "</div>"+
                    comment+
                    "</div>";

                if (i<test.length/2){
                    $('#mainReceiver1').append(testDiv);
                } else {
                    $('#mainReceiver2').append(testDiv);
                }

            }

        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}
