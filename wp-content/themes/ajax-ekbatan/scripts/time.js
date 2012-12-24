function init ( )
{
  timeDisplay = document.createTextNode ( "" );
  document.getElementById("clock").appendChild ( timeDisplay );
}

function updateClock ( )
{
  var currentTime = new Date ( );

  var currentHours = currentTime.getHours ( );
  var currentMinutes = currentTime.getMinutes ( );
  var currentSeconds = currentTime.getSeconds ( );

  // Pad the minutes and seconds with leading zeros, if required
  currentMinutes = ( currentMinutes < 10 ? "0" : "" ) + currentMinutes;
  currentSeconds = ( currentSeconds < 10 ? "0" : "" ) + currentSeconds;

  // Choose either "AM" or "PM" as appropriate
  var timeOfDay = ( currentHours < 12 ) ? "ق ظ" : "ب ظ";

  // Convert the hours component to 12-hour format if needed
  currentHours = ( currentHours > 12 ) ? currentHours - 12 : currentHours;

  // Convert an hours component of "0" to "12"
  currentHours = ( currentHours == 0 ) ? 12 : currentHours;

  //Convert Tiem from English To Persian
  var replaceDigits = function(paramdate) {
    var map = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹']
    paramdate= paramdate.toString().replace(/1/gi,map[1]);
    paramdate= paramdate.toString().replace(/2/gi,map[2]);
    paramdate= paramdate.toString().replace(/3/gi,map[3]);
    paramdate= paramdate.toString().replace(/4/gi,map[4]);
    paramdate= paramdate.toString().replace(/5/gi,map[5]);
    paramdate= paramdate.toString().replace(/6/gi,map[6]);
    paramdate= paramdate.toString().replace(/7/gi,map[7]);
    paramdate= paramdate.toString().replace(/8/gi,map[8]);
    paramdate= paramdate.toString().replace(/9/gi,map[9]);
    paramdate= paramdate.toString().replace(/0/gi,map[0]);
    return paramdate;
  }
  currentSeconds=replaceDigits(currentSeconds);
  currentHours=replaceDigits(currentHours);
  currentMinutes=replaceDigits(currentMinutes);
  
  // Compose the string for display
  var currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay;

  // Update the time display
  document.getElementById("clock").firstChild.nodeValue = currentTimeString;
}