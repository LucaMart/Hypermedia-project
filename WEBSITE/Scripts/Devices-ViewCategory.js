$(document).ready(filter);

/*function loadPage(){
    var id=1;

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/Devices-ViewCategory.php", //Relative or absolute path to file.php file
        data: {
            category : ourCategory
            },

        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var devices=JSON.parse(response);
            console.log("Response parsed successfully");

            var listOfDevicesDivs="";
            var el="";
            for(var i=0;i<devices.length;i++){
                var name = devices[i].Name;
                var price = devices[i].Price;
                var imagePath = devices[i].ImagePath;

                console.log(name);

                listOfDevicesDivs+=
                    "<div class= \"device col-xs-12 col-sm-3\">"+
                    "<img src=\""+imagePath+"\">"+"</img>"+
                    "<a href=\"Device.html?device="+name+"\""+">"+name+"</a>"+
                    "<p>"+price+"</p>"+
                    "</div>";

            }

            console.log(listOfDevicesDivs);
            $('head title').html(ourCategory);
            $('.breadcrumb .active').html(ourCategory);
            $('#mainReceiver').append(listOfDevicesDivs);
        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}*/
var checkboxOn = [];
var maxrange;
var minrange;
function filter(){
    /*var radio = document.getElementsByName("deviceType");
    var radioChecked;
    var i;
    //Search for checked button
    for(i=0; i< radio.length; i++){
        if(radio[i].checked)
            radioChecked=radio[i].value;
    }*/
    var filters = document.getElementsByTagName('input');
    var radioOn = [];
    checkboxOn = [];
    var c;
    for(c=0; c < filters.length; c++){
        if(filters[c].type=='radio' && filters[c].checked){
            radioOn.push({Name: filters[c].name, Value: filters[c].value});
        }else{
            if(filters[c].type=='checkbox' && filters[c].checked){
                    checkboxOn.push({Name: filters[c].name, Value: filters[c].value});
            }else{
                if(filters[c].type=='range'){
                    if(filters[c].name=="minPrice"){
                        minrange = filters[c].value;
                        
                    }else{
                        if(filters[c].name=="maxPrice")
                            maxrange = filters[c].value;       
                    }
                }
            }
        }
    }
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/Filtertest.php", //Relative or absolute path to file.php file
        data: {
            category : ourCategory,
            checkbox : JSON.stringify(checkboxOn),
            radio : JSON.stringify(radioOn),
            },
        success: function(response) {
        var deviceList = JSON.parse(response);
        var i;
        var c;
        var indexToRemove = [];
        var listOfDevicesDivs="";
        //$('h4').append(response);
        $('.device').remove();
        for(i=0; i< deviceList.length; i++){
            //check the price value
            var n = deviceList[i].Price.indexOf("&");
            var stringPrice = deviceList[i].Price.substring(0,n);
            stringPrice = stringPrice.replace(",",".");
            var float = parseFloat(stringPrice);
            if(float<minrange || float>maxrange){
                deviceList.splice(i,1);
                i--;
            }else{
                //check category
               var remove = 0;
                for(c=0; c<checkboxOn.length; c++){
                    var string = checkboxOn[c].Name;
                    var substring = checkboxOn[c].Value;
                    if(deviceList[i][string].indexOf(substring) > -1){
                        remove = 0;
                        break;
                    }
                    remove =1;
                }
                if(remove==1){
                    deviceList.splice(i,1);
                    i--;
                }
            }
        }
        for(i=0;i<deviceList.length;i++){
                var name = deviceList[i].Name;
                var price = deviceList[i].Price;
                var imagePath = deviceList[i].ImagePath;

                //console.log(name);

                listOfDevicesDivs+=
                    "<div class= \"device col-xs-12 col-sm-3\">"+
                    "<img src=\""+imagePath+"\">"+"</img>"+
                    "<a href=\"Device.html?device="+name+"\""+">"+name+"</a>"+
                    "<p>"+price+"</p>"+
                    "</div>";

            }
        $('head title').html(ourCategory);
        $('.breadcrumb .active').html(ourCategory);
        $('#mainReceiver').append(listOfDevicesDivs);
        },
        error: function(){
            $('h4').append('error');
        }
          
    });
}

function showValue(value, id){
    var divId= id+"Num";
    document.getElementById(divId).innerHTML=value+" &#8364";
}

