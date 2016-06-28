$(document).ready(loadPage);

function loadPage(){
    var id=1;

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/Testimonials.php", //Relative or absolute path to file.php file

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
                var videoPath = test[i].videoPath;

                if (comment==null){comment="";}

                console.log(title);

                testDiv=
                    "<div class= \"testimonialDiv col-xs-12 col-sm-6\">"+
                    "<div><h3>"+title+"</h3>"+
                    "<a href=\""+videoPath+"\">"+
                    "<img src=\""+imagePath+"\"/>"+ "</a>"+
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
