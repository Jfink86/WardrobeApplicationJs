﻿//change color 

function myFunction(elmnt, clr) {
    elmnt.style.color = clr;
}
function mOut(obj) {
    obj.innerHTML = "ON-SALE TODAY ONLY";
}

//User Add content JS Function

function Greeting() {
    var x = document.getElementById("greeting");
    var userResponse = prompt('Welcome to my SuperDope Wardrobe App. Please enter your name to sign-in.');
    x.innerText = "Hello " + userResponse + ', WELCOME to my SuPerDoPe WaRDroBe APP ';
}

//Copyright hover JS function

function myFunction2(elmnt, clr) {
    elmnt.style.color = clr;
}
function mOut2(obj) {
    obj.innerHTML = "Created By Joe Fink";
}

//Show items that meet a certain criteria

var fruits = ["Banana", "Orange", "Apple", "Mango"];
document.getElementById("demo").innerHTML = fruits;

function myFunction3() {
    fruits.sort();
    document.getElementById("demo").innerHTML = fruits;
}


//user inhance size and color of text and return to default JS functions

function overBtn(x) {
    x.style.backgroundColor = "black";
    x.style.color = "white";
    x.style.fontSize = "24px";
}

function outBtn(x) {
    x.style.backgroundColor = "#f5f5f5";
    x.style.color = "black";
    x.style.fontSize = "14px";
}

function SwapDivsWithClick(div1, div2) {
    d1 = document.getElementById(div1);
    d2 = document.getElementById(div2);
    if (d2.style.display === "none") {
        d1.style.display = "none";
        d2.style.display = "flex";
    }
    else {
        d1.style.display = "flex";
        d2.style.display = "none";
    }
}

function Redirect(x) {
    var confirmButton = document.getElementById(x);
    var userResponse = confirm('You are about to leave this site. If you want to stay, please select cancel.');
    var displayContainer = document.getElementById('confirmResponse');
    var displayMessage = '';
    var alert = "userResponse";
    if (userResponse) {
        var win = window.open("https://pay.amazon.com/us/merchant", '_blank');
        win.focus();
    }
}

function GetVilla() {
    var villaArray = new Array(0);
    var userResponse = confirm('Click "OK" to availability of an Item?');
    while (userResponse) {
        var villa = prompt('Enter the Name of any Item');
        userResponse = confirm('Click "OK" to check Availability another Item');
        villaArray.push(villa);
    }
    var d = new Date();
    var m = d.getMonth();
    var x = document.getElementById("villaswap");
    if (m > 0 && m < 4) {
        x.getElementsByTagName('p')[1].innerText = villaArray[0];
    } else if (m > 3 && m < 7) {
        x.getElementsByTagName('p')[1].innerText = villaArray[1];
    } else if (m > 6 && m < 10) {
        x.getElementsByTagName('p')[1].innerText = villaArray[2];
    } else if (m > 9 && m < 13) {
        x.getElementsByTagName('p')[1].innerText = villaArray[3];
    } else {
        x.getElementsByTagName('p')[1].innerText = 'Sorry this item is not available';
    }
}
//Homework JSFunction
function myFunction5() {
    alert("Thank you for using my wardrobe Application. This document will be printed next time you connect to your local printer");
}






