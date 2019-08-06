var xmlHttpUInfo;
var xmlHttpPrice;


var seconds = 60;

function secondPassed() {

    var minutes = Math.round((seconds - 30) / 60);
    var remainingSeconds = seconds % 60;
    if (remainingSeconds < 10) {
        remainingSeconds = "0" + remainingSeconds;
    }
    document.getElementById('countdown').innerHTML = minutes + ":" + remainingSeconds;
    if (seconds == 0) {
        clearInterval(window.countdownTimer);
        document.getElementById('countdownmsg').innerHTML = "Time expired. Reservation process is cancelled.";
        document.getElementById('confirmNIC').disabled=true;
        document.getElementById('hiddenRedirect').click();
    } else {
        seconds--;
    }
}
//var countdownTimer = setInterval('secondPassed()', 1000);
function myStopFunction() {
    clearInterval(countdownTimer);
}


function GetXmlHttpObject() {
    var xmlHttpUInfo = null;
    try {
        // Firefox, Opera 8.0+, Safari
        xmlHttpUInfo = new XMLHttpRequest();
    } catch (e) {
        // Internet Explorer
        try {
            xmlHttpUInfo = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            xmlHttpUInfo = new ActiveXObject("Microsoft.XMLHTTP");
        }
    }
    return xmlHttpUInfo;
}

function fillSchedules() {
    var trainCode = document.form.trainCode.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (trainCode == -1) {
        return false;
    } else {
        var url = "getSchedules.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?trainCode=" + trainCode + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = scheduleStateChanged;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function fillVipSchedules() {
    var trainCode = document.form.trainCode.value;
    var schCode = document.form.schCode.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (trainCode == -1) {
        return false;
    } else {
        var url = "getSchedules.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?trainCode=" + trainCode + "&schCode=" + schCode + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = scheduleStateChanged;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function scheduleStateChanged() {
    document.getElementById("schedule").innerHTML = '<center><img src="../images/ajax.gif"></center>';
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("schedule").innerHTML = xmlHttpUInfo.responseText;
        fillPClass();
    }
}

function fillSchdDate() {
    var trainCode = document.form.trainCode.value;
    var scheduleDate = document.form.scheduleDate.value;
    var classCode = document.form.classCode.value;
    //alert(trainCode+" "+scheduleDate+" "+classCode);

    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (trainCode == -1) {
        return false;
    } else {
        var url = "scheduleDate.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?trainCode=" + trainCode + "&scheduleDate=" + scheduleDate + "&classCode=" + classCode + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = fillSchdDateChd;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function fillSchdDateChd() {
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("schDate").innerHTML = "";
        document.getElementById("schDate").innerHTML = xmlHttpUInfo.responseText;
        //fillFrom();
        fillPassengerClass();
    }
}

function fillPassengerClass() {
    var trainCode = document.form.trainCode.value;
    var classCode = document.form.classCode.value;

    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (trainCode == -1) {
        return false;
    } else {
        var url = "pClass.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?trainCode=" + trainCode + "&classCode=" + classCode + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = passengerClassChanged;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function passengerClassChanged() {
    document.getElementById("pClass").innerHTML = "";
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("pClass").innerHTML = xmlHttpUInfo.responseText;
        fillFrom();
        //fillSeatPlan1();

    }
}

function fillFrom() {
    var trainCode = document.form.trainCode.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (trainCode == -1) {
        return false;
    } else {
        var url = "fromst.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?trainCode=" + trainCode + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = fillFromChanged;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function fillFromChanged() {
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("fromst").innerHTML = xmlHttpUInfo.responseText;
        fillTost();
    }
}

function fillTost() {
    var trainCode = document.form.trainCode.value;
    var fromStation = document.form.fromSt.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (trainCode == -1) {
        return false;
    } else {
        var url = "tost.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?trainCode=" + trainCode + "&fromStation=" + fromStation + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = fillTostChanged;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function fillTostChanged() {
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("tost").innerHTML = xmlHttpUInfo.responseText;
        //fillPassengerClass();
        fillSeatPlan1();
    }
}

function fillPClass() {
    var trainCode = document.form.trainCode.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (trainCode == -1) {
        return false;
    } else {
        var url = "findClassForBooking.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?trainCode=" + trainCode + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = pClassStateChanged;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function pClassStateChanged() {
    document.getElementById("pClass").innerHTML = '<center><img src="../images/ajax.gif"></center>';
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("pClass").innerHTML = xmlHttpUInfo.responseText;
        fillSeatPlan();
    }
}

function fillSeatPlan() {
    var scheduleDate = document.form.scheduleDate.value;
    var trainCode = document.form.trainCode.value;
    var classCode = document.form.classCode.value;
    var myType = document.form.myType.value;
    var fromSt = document.form.fromSt.value;
    var toSt = document.form.toSt.value;
    //alert("XXX"+myType+"XXX");

    xmlHttpUInfo = GetXmlHttpObject();

    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (classCode == -1 || trainCode == -1 || scheduleDate == -1 || fromSt == null || toSt == null) {
        return;
    } else {
        var url = "getSeats.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?scheduleDate=" + scheduleDate + "&trainCode=" + trainCode + "&classCode=" + classCode
                + "&myType=" + myType + "&fromSt=" + fromSt + "&toSt=" + toSt + "&randomnumber=" + randomnumber;

        xmlHttpUInfo.onreadystatechange = stateChangedFillSeatPlan;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function fillSeatPlan1() {
    var trainCode = document.form.trainCode.value;
    var scheduleDate = document.form.scheduleDate.value;
    var classCode = document.form.classCode.value;
    var myType = document.form.myType.value;
    var fromSt = document.form.fromSt.value;
    var toSt = document.form.toSt.value;
    xmlHttpUInfo = GetXmlHttpObject();

    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    if (classCode == -1 || trainCode == -1 || scheduleDate == -1 || fromSt == null || toSt == null) {
        return;
    } else {
        var url = "getSeats.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?scheduleDate=" + scheduleDate + "&trainCode=" + trainCode + "&classCode=" + classCode
                + "&myType=" + myType + "&fromSt=" + fromSt + "&toSt=" + toSt + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = stateChangedFillSeatPlan;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}


function stateChangedFillSeatPlan() {
    document.getElementById("seat").innerHTML = '<center><img src="../images/ajax.gif"></center>';
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("seat").innerHTML = xmlHttpUInfo.responseText;

        if (document.getElementById("penNIC") != null && document.getElementById("penRef") != null) {
            document.getElementById("payemt").selectedIndex = 2;
            //document.getElementById("payemt").disabled = true;
            document.getElementById("payemt").selectedIndex = 2;
            document.getElementById("payemt").disabled = true;

            document.getElementById("hpayemt").value = "P-WARRENT";
            setWarrent('P-WARRENT');
        }
    }
}


function fillPriceForChange() {
    var trainCode = document.form.trainCode.value;
    var scheduleDate = document.form.scheduleDate.value;
    var fromSt = document.form.fromSt.value;
    var toSt = document.form.toSt.value;
    var classCode = document.form.classCode.value;
    var seatCode = document.form.seatCode.value;
    xmlHttpPrice = GetXmlHttpObject();
    if (xmlHttpPrice == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    var url = "getPrice.jsp";
    var randomnumber = Math.floor(Math.random() * 11);
    url = url + "?trainCode=" + trainCode + "&scheduleDate=" + scheduleDate + "&fromSt=" + fromSt + "&toSt=" + toSt + "&classCode=" + classCode + "&seatCode=" + seatCode + "&randomnumber=" + randomnumber;
    xmlHttpPrice.onreadystatechange = priceChanged;
    xmlHttpPrice.open("GET", url, true);
    xmlHttpPrice.send(null);
    return;
}

function priceChanged() {
    document.getElementById("aPrice").innerHTML = '<left><img src="../images/ajax.gif"></left>';
    if (xmlHttpPrice.readyState == 4) {
        document.getElementById("aPrice").innerHTML = "";
        document.form.price.value = xmlHttpPrice.responseText;
    }
}

function fillPrice() {
    var trainCode = document.form.trainCode.value;
    var scheduleDate = document.form.scheduleDate.value;
    var fromSt = document.form.fromSt.value;
    var toSt = document.form.toSt.value;
    var classCode = document.form.classCode.value;
    var seatCode = document.form.seatCode.value;
    xmlHttpPrice = GetXmlHttpObject();
    if (xmlHttpPrice == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    var url = "getPrice.jsp";
    var randomnumber = Math.floor(Math.random() * 11);
    url = url + "?trainCode=" + trainCode + "&scheduleDate=" + scheduleDate + "&fromSt=" + fromSt + "&toSt=" + toSt + "&classCode=" + classCode + "&seatCode=" + seatCode + "&randomnumber=" + randomnumber;
    xmlHttpPrice.onreadystatechange = priceChanged;
    xmlHttpPrice.open("GET", url, true);
    xmlHttpPrice.send(null);
    return;
}


function priceStateChanged() {
    document.getElementById("aPrice").innerHTML = '<left><img src="../images/ajax.gif"></left>';
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("aPrice").innerHTML = "";
        document.form.price.value = xmlHttpUInfo.responseText;
    }
}

function findPMode(str) {
    var classCode = document.form.classCode.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    var url = "pMode.jsp";
    var randomnumber = Math.floor(Math.random() * 11);
    url = url + "?mode=" + str + "&classCode=" + classCode + "&randomnumber=" + randomnumber;
    xmlHttpUInfo.onreadystatechange = stateChangedFindPMode;
    xmlHttpUInfo.open("GET", url, true);
    xmlHttpUInfo.send(null);
    return;
}

function fillPasioner(str) {
    var classCode = document.form.classCode.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    var url = "pensionInit.jsp";
    var randomnumber = Math.floor(Math.random() * 11);
    url = url + "?mode=" + str + "&classCode=" + classCode + "&randomnumber=" + randomnumber;
    xmlHttpUInfo.onreadystatechange = stateChangedFindPMode;
    xmlHttpUInfo.open("GET", url, true);
    xmlHttpUInfo.send(null);
    return;
}
function fillDependant() {
    var pnic = document.form.pnic.value;
    var pref = document.form.pref.value;
//    var pnic = document.form.nicNumber.value;
    var classCode = document.form.classCode.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }
    var url = "pension.jsp";
    var randomnumber = Math.floor(Math.random() * 11);
    url = url + "?pnic=" + pnic + "&pref=" + pref + "&classCode=" + classCode + "&randomnumber=" + randomnumber;
    xmlHttpUInfo.onreadystatechange = stateChangedFindPension;
    xmlHttpUInfo.open("GET", url, true);
    xmlHttpUInfo.send(null);
    return;
}


function stateChangedFindPMode() {
    document.getElementById("p_mod").innerHTML = '<center><img src="../images/ajax.gif"></center>';
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("p_mod").innerHTML = xmlHttpUInfo.responseText;

        if (document.getElementById("penNIC") != null && document.getElementById("penRef") != null) {
            document.getElementById("pnic").value = document.getElementById("penNIC").value;
            document.getElementById("pref").value = document.getElementById("penRef").value;
        }
    }

}
function stateChangedFindPension() {
    document.getElementById("pensioner").innerHTML = '<center><img src="../images/ajax.gif"></center>';
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("pensioner").innerHTML = xmlHttpUInfo.responseText;
    }

}

function reviseWarrentPrice(wClass) {
    var trainCode = document.form.trainCode.value;
    var scheduleDate = document.form.scheduleDate.value;
    var fromSt = document.form.fromSt.value;
    var toSt = document.form.toSt.value;
    var seatCode = document.form.seatCode.value;
    var classCode = document.form.classCode.value;
    xmlHttpUInfo = GetXmlHttpObject();
    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    }

    if (wClass == 0 && (classCode == 5 || classCode == 6 || classCode == 7 || classCode == 8 || classCode == 9 || classCode == 10)) {
        alert("Select First class seats to upgrade");
        document.form.wClass[0].checked = true;
        return;
    }

    if (wClass == 0) {
        var answer = confirm("Do not select or deselect seats once you click OK button here")
        if (answer) {
            //some code
        } else {
            location.reload();
            return;
        }
    }
    if (wClass == 2 && (classCode == 1 || classCode == 2 || classCode == 3 || classCode == 4 || classCode == 11)) {
        alert("You cannot select Second class Warrant for First Class Reservations.");
        document.form.wClass[0].checked = true;
        return;
    } else {
        document.form.wType.value = wClass;
        var url = "revisedPrice.jsp";
        var randomnumber = Math.floor(Math.random() * 11);
        url = url + "?trainCode=" + trainCode + "&scheduleDate=" + scheduleDate + "&fromSt=" + fromSt + "&toSt=" + toSt + "&wClass=" + wClass + "&seatCode=" + seatCode + "&classCode=" + classCode + "&randomnumber=" + randomnumber;
        xmlHttpUInfo.onreadystatechange = reviseWarrentPriceStateChanged;
        xmlHttpUInfo.open("GET", url, true);
        xmlHttpUInfo.send(null);
        return;
    }
}

function reviseWarrentPriceStateChanged() {

    document.getElementById("aPrice").innerHTML = '<left><img src="../images/ajax.gif"></left>';
    if (xmlHttpUInfo.readyState == 4) {
        document.getElementById("aPrice").innerHTML = "";
        if (document.form.wType.value == 0) {
            var accamt = document.form.price.value - xmlHttpUInfo.responseText

            if (xmlHttpUInfo.responseText == 0 || accamt == 0)
            {
                alert("You cannot warrent upgrade this seat.");
                location.reload();
                return;
            }

            document.form.accamnt.value = accamt.toFixed(2);
            //document.form.accamnt.value=(document.form.price.value).toFixed(2) - (xmlHttpUInfo.responseText).toFixed(2)
        }
        document.form.price.value = xmlHttpUInfo.responseText;
    }
}

function revisePWarrentPrice(pwclass) {
//    alert("pwclass" + pwclass)
    var trainCode = document.form.trainCode.value;
//    alert("trainCode" + trainCode)
    var scheduleDate = document.form.scheduleDate.value;
//    alert("scheduleDate" + scheduleDate)
    var fromSt = document.form.fromSt.value;
//    alert("fromSt" + fromSt)
    var toSt = document.form.toSt.value;
//    alert("toSt" + toSt)
    var seatCode = document.form.seatCode.value;
//    alert("seatCode" + seatCode)
    var classCode = document.form.classCode.value;
//    alert("classCode" + classCode)

    if (xmlHttpUInfo == null) {
        alert("Your browser does not support AJAX!");
        return;
    } else {
//        alert("checked " + document.getElementById("pupgrade").checked)
        if (document.getElementById("pupgrade").checked) {
//            alert("pupgrade:" + document.getElementById("pupgrade").value)
            if (document.getElementById("pupgrade").value == "0" || document.getElementById("pupgrade").value == "1") {//upgrade

                var answer = confirm("Do not select or deselect seats once you click OK button here")
                if (answer) {
                    //        document.form.wType.value = wClass;
                    var url = "revisedPrice.jsp";
                    var randomnumber = Math.floor(Math.random() * 11);
                    url = url + "?trainCode=" + trainCode + "&scheduleDate=" + scheduleDate + "&fromSt=" + fromSt + "&toSt=" + toSt + "&wClass=" + pwclass + "&seatCode=" + seatCode + "&classCode=" + classCode + "&randomnumber=" + randomnumber;
                    xmlHttpUInfo.onreadystatechange = revisePWarrentPriceStateChanged;
                    xmlHttpUInfo.open("GET", url, true);
                    xmlHttpUInfo.send(null);
                    return;
                } else {
                    document.form.accamnt.value = 0;
                    return false;
                }
            } else {
                document.form.accamnt.value = 0;
                return false;
            }

        } else {
            document.form.accamnt.value = 0;
            location.reload();
            return;
        }

    }

}

function revisePWarrentPriceStateChanged() {

    if (xmlHttpUInfo.readyState == 4) {

        if (document.getElementById("pupgrade").value == "0") {//upgrade
            var accamt = document.form.price.value - xmlHttpUInfo.responseText
            if (xmlHttpUInfo.responseText == 0 || accamt == 0)
            {
                alert("You cannot p-warrent upgrade this seat.");
                location.reload();
                return;
            }

            document.form.accamnt.value = accamt.toFixed(2);

        } else if (document.getElementById("pupgrade").value == "1") {//downgrade

        }

        document.form.price.value = xmlHttpUInfo.responseText;
    }
}

function clearRt() {
    document.getElementById("schedule").innerHTML = "";
    document.getElementById("pClass").innerHTML = "";
    document.getElementById("seat").innerHTML = "";
    document.form.seatCode.value = "";
}

function clearRt1() {
    document.getElementById("schedule").innerHTML = "";
    document.getElementById("pClass").innerHTML = "";
    document.form.seatCode.value = "";
}

function clearTrain() {
    document.getElementById("seat").innerHTML = "";
    document.form.seatCode.value = "";
    document.form.seatCode.pensionCode = "";
}

function clearToSt() {
    document.getElementById("tost").innerHTML = "";
    document.form.seatCode.value = "";
}

function clearShdule() {
    //document.getElementById("pClass").innerHTML     = "";
    document.getElementById("seat").innerHTML = "";
    document.form.seatCode.value = "";
}

function clearShdule2() {
    document.getElementById("seat").innerHTML = "";
    document.form.seatCode.value = "";
}

function clearPClass() {
    document.getElementById("seat").innerHTML = "";
    document.form.seatCode.value = "";
}

function clearPComp() {
    document.getElementById("seat").innerHTML = "";
    document.form.seatCode.value = "";
}

function clearPMode() {
    document.getElementById("p_mod").innerHTML = "";
}


function confirmNICPP() {
//    console.log("| confirmNICPP called | ");
    var nic_pp2 = "-";
    var nic_pp3 = "-";
    var nic_pp4 = "-";
    var nic_pp5 = "-";

    if (document.getElementById("nic_pp1") != null) {
        nic_pp2 = document.getElementById("nic_pp1").value;

    }
    if (document.getElementById("nic_pp2") != null) {
        nic_pp3 = document.getElementById("nic_pp2").value;

    }
    if (document.getElementById("nic_pp3") != null) {
        nic_pp4 = document.getElementById("nic_pp3").value;


    }
    if (document.getElementById("nic_pp4") != null) {
        nic_pp5 = document.getElementById("nic_pp4").value;

    }

    if (document.getElementById("dep2") != null) {
        if (document.getElementById("dep2").checked) {
            nic_pp2 = "(D)";
        }
    }
    if (document.getElementById("dep3") != null) {
        if (document.getElementById("dep3").checked) {
            nic_pp3 = "(D)";
        }
    }
    if (document.getElementById("dep4") != null) {
        if (document.getElementById("dep4").checked) {
            nic_pp4 = "(D)";
        }
    }
    if (document.getElementById("dep5") != null) {
        if (document.getElementById("dep5").checked) {
            nic_pp5 = "(D)";
        }
    }
    if (nic_pp2 == '' || nic_pp3 == '' || nic_pp4 == '' || nic_pp5 == '') {
        alert("Every field must be filled with data.");
    } else {
        var init_nic_pp = document.getElementById("nic2").value;
//        console.log("| init_nic_pp | " + init_nic_pp);
//        console.log("| all values | " + init_nic_pp + "  |  " + nic_pp2 + "  |  " + nic_pp3 + "  |  " + nic_pp4 + "  |  " + nic_pp5);



        document.getElementById("nic_pp_val_all").innerHTML = init_nic_pp + ",    " + nic_pp2 + ",    " + nic_pp3 + ",    " + nic_pp4 + ",    " + nic_pp5;


//        console.log("| nic_pp2 | " + nic_pp2 + " | nic_pp3 | " + nic_pp3 + " | nic_pp4 | " + nic_pp4 + " | nic_pp5 | " + nic_pp5);

        var urlV = document.getElementById("hiddenurl").value;
        urlV = urlV + "&param=" + init_nic_pp + "," + nic_pp2 + "," + nic_pp3 + "," + nic_pp4 + "," + nic_pp5;
//        console.log("| urlV | " + urlV);
        document.getElementById("hiddenurl_2").value = urlV;
        document.getElementById("printpreview").style.display = '';

        var bookingRef = document.getElementById("hidden_b_ref").value;

        xmlHttpUInfo = GetXmlHttpObject();
        if (xmlHttpUInfo == null) {
            alert("Your browser does not support AJAX!");
            return;
        }
        if (bookingRef.length > 0) {
            var url = "updateBooking.jsp";
            var randomnumber = Math.floor(Math.random() * 11);
            url = url + "?bookingRef=" + bookingRef + "&nic_list=" + init_nic_pp + "," + nic_pp2 + "," + nic_pp3 + "," + nic_pp4 + "," + nic_pp5 + "&randomnumber=" + randomnumber;
//              xmlHttpUInfo.onreadystatechange=updateBookingRef;

            xmlHttpUInfo.open("GET", url, true);
            xmlHttpUInfo.send(null);
            myStopFunction();
            document.getElementById("nic_pp_panel").style.display = 'none';
            return;
        }


    }
}


function updateBookingRef() {
//    document.getElementById("aPrice").innerHTML = '<left><img src="../images/ajax.gif"></left>';
    if (xmlHttpPrice.readyState == 4) {
//        document.getElementById("aPrice").innerHTML = "";
        document.form.price.value = xmlHttpPrice.responseText;
    }
}

function windowOpen() {
    var newURL = document.getElementById("hiddenurl_2").value;
//    console.log("| newURL | " + newURL);
    var Window = window.open(newURL,
            'Ratting', 'width=510,height=410,left=0,top=0,toolbar=0,status=1,');
}

function hidePrintPreview() {
    document.getElementById("printpreview").style.display = 'none';
}

function chkNoOfTickets(totalTickets, outlet) {
    window.countdownTimer = setInterval('secondPassed()', 1000);
//    alert(totalTickets);
    if (outlet == 4) {
        if (totalTickets == 1) {
            var init_nic_pp = document.getElementById("nic2").value;
            document.getElementById("nic_pp_panel").style.display = 'none';
            document.getElementById("printpreview").style.display = '';
            document.getElementById("nic_pp_val_all").innerHTML = init_nic_pp;

            var urlV = document.getElementById("hiddenurl").value;
            urlV = urlV + "&param=" + init_nic_pp;
//            console.log("| urlV | " + urlV);
            document.getElementById("hiddenurl_2").value = urlV;
        }
    } else {
        var init_nic_pp = document.getElementById("nic2").value;
        document.getElementById("nic_pp_panel").style.display = 'none';
        document.getElementById("printpreview").style.display = '';
        document.getElementById("nic_pp_val_all").innerHTML = init_nic_pp;

        var urlV = document.getElementById("hiddenurl").value;
        urlV = urlV + "&param=" + init_nic_pp;
//        console.log("| urlV | " + urlV);
        document.getElementById("hiddenurl_2").value = urlV;
    }

}

function setWarrent(str) {

    document.form.seatCode.pensionCode = "";
    document.getElementById("nicinput").style.display = '';
    if (str == 'WARRENT' || str == 'PASS') {
        findPMode(str);
        fillPriceForChange();
    } else if (str == 'P-WARRENT') {
        document.getElementById("nicinput").style.display = 'none';
        document.getElementById("p_mod").innerHTML = "";
        fillPasioner(str);
    } else {
        document.getElementById("p_mod").innerHTML = "";
        fillPrice();
    }
}

function setPassengerType(str) {
    if (str == 'local') {
        document.getElementById("nicinput").style.display = '';
        document.getElementById("passportNumber").value = '';
        document.getElementById("passportnput").style.display = 'none';
    } else if (str == 'foreign') {
        document.getElementById("nicinput").style.display = 'none';
        document.getElementById("nicNumber").value = '';
        document.getElementById("passportnput").style.display = '';
    }
}


function setWarrentB(str) {
    if (str == 'WARRENT' || str == 'PASS') {
        findPMode(str);
        fillPriceForChange();
    } else {
        document.getElementById("p_mod").innerHTML = "";
        fillPrice();
    }
}
function setDependent() {
    document.getElementById("pensioner").innerHTML = "";
    fillDependant();

}
function setDependent(val) {
    var chkStatus = document.getElementById("dep" + val).checked;
//    console.log("|chkStatus|" + chkStatus);

    var initVal = document.getElementById("nic2");
    var nicV = document.getElementById("nic_pp" + --val);
//    if (chkStatus) {
//        console.log(" | dependent clicked val | " + val);
//        var initVal = document.getElementById("nic2").value;
//        console.log("| initVal | " + initVal + " | val-1 | " + "nic_pp" + --val)
//        document.getElementById("nic_pp" + val).value = initVal;
//         document.getElementById("nic_pp" + val).enabled = false;
//    } else {
//        console.log("|called false|")
//         console.log("| element id |" + "nic_pp" + val)
//        document.getElementById("nic_pp" + val).value = "";
//        document.getElementById("nic_pp" + val).enabled = true;
//        document.getElementById("nic_pp" + val).innerHTML = "";
//    }

    if (chkStatus) {
//        console.log(" | dependent clicked val | " + val);
        document.getElementById("printpreview").style.display = 'none';
//        console.log("| initVal | " + initVal.value + " | val-1 | " + "nic_pp" + --val)
//        nicV.value = initVal.value ;
        nicV.value = '(D)';
        nicV.disabled = true;
    } else {
        document.getElementById("printpreview").style.display = 'none';
//        console.log("|called false|")
//        console.log("| element id |" + "nic_pp" + val)
        nicV.value = "";
        nicV.disabled = false;
        nicV.innerHTML = "";
    }
}



function setTicket(caller) {
    if (caller.checked) {
        add(caller)
    } else {
        subtract(caller)
    }
}
function add(caller) {
    var seatCode = document.getElementById("seatCode")

    var gender = document.form.gender.value;
    if (seatCode.value.split("Y").length < 6) {

        seatCode.value = seatCode.value + "Y" + (caller.name + "Z" + gender);

        fillPrice();
        if (gender == "M") {
            document.getElementById(caller.name).style.backgroundColor = '#8484FF';
        } else if (gender == "F") {
            document.getElementById(caller.name).style.backgroundColor = '#FDB5F8';
        }
    } else {
        alert("maximum 5 Seats ");
        caller.checked = false;
    }
}


function subtract(caller) {
    var seatCode = document.getElementById("seatCode")
    var seat = seatCode.value;
    seat = seat.replace("Y" + caller.name + "ZM", "");
    seat = seat.replace("Y" + caller.name + "ZF", "");
    seatCode.value = seat;
    fillPrice();
    document.getElementById(caller.name).style.backgroundColor = "#E8A584";

}

function setPensioner(pensioner) {
    if (pensioner.checked) {
        addPensioner(pensioner)
    } else {
        subtractPensioner(pensioner)
    }
}
function addPensioner(pensioner) {
    var pensionCode = document.getElementById("pensionCode");
    pensionCode.value = pensionCode.value + "~" + pensioner.name;

}
function subtractPensioner(pensioner) {
    var pensionCode = document.getElementById("pensionCode")
    var temp = pensionCode.value;
    pensionCode.value = temp.replace("~" + pensioner.name, "");

}

function changeBGC(color) {
    document.getElementById().bgColor = color;
}
