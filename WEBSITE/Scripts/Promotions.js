$(document).ready(loadPageDev);

var maxrange;
var minrange;
var radioOn = [];
function loadPageDev(){
    var id=1;
   var filters = document.getElementsByTagName('input');
    var c;
    radioOn = [];
    for (c=0; c<filters.length; c++){
        if(filters[c].type=='radio' && filters[c].checked){
            radioOn.push({Name: filters[c].name, Value: filters[c].value});
        }else{
            if(filters[c].type=='range'){
                if(filters[c].name=='minPrice'){
                    minrange = filters[c].value;
                }else{
                    if(filters[c].name=='maxPrice'){
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
        url: "./PHP/Promotions(Dev).php", //Relative or absolute path to file.php file,
        success: function(response) {

            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var devices=JSON.parse(response);
            console.log("Response parsed successfully");
            filter(devices);
            var listOfDevicesDivs="";
            var el="";
            $('.device').remove();
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
            //$('#mainReceiver').append(listOfDevicesDivs);
            loadPageProm(listOfDevicesDivs);
        },
        error: function(request,error)
        {
            console.log(error);
        }
    });

}

function loadPageProm(listOfDevicesDivs){
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        //crossDomain: true, //localhost purposes
        url: "./PHP/Promotions(SL).php", //Relative or absolute path to file.php file,
        success: function(response) {
            console.log("Preparing to parse response...");
            console.log(JSON.parse(response));
            var devices=JSON.parse(response);
            console.log("Response parsed successfully");
            filter(devices); 
            var el="";
            for(var i=0;i<devices.length;i++){
                var name = devices[i].Name;
                var price = devices[i].Price;
                var imagePath = devices[i].SLImagePath;

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
            $('#mainReceiver').append("error");
            console.log(error);
        }
    });
}

function filter(devices){
    var i;
    var c;
    for(i=0; i< Object.keys(devices).length; i++){
        var n = devices[i].Price.indexOf("&");
        var stringPrice = devices[i].Price.substring(0,n);
        stringPrice = stringPrice.replace(",",".");
        var float = parseFloat(stringPrice);
        if(float<minrange || float>maxrange){
            devices.splice(i,1);
            i--;
        }else{
            var category = radioOn[0].Name;
            var categoryValues = radioOn[0].Value.split("+");
            var remove = 0;
            if(categoryValues[0] != "all"){
                for(c=0; c<categoryValues.length; c++){
                    if(devices[i][category].indexOf(categoryValues[c])> -1){
                        remove = 0;
                        break;
                    }
                    remove = 1;
                }
            }
            if(remove==1){
                devices.splice(i,1);
                i--;
            }
        }
    }
}


function showValue(value, id){
    var divId= id+"Num";
    document.getElementById(divId).innerHTML=value+" &#8364";
}
