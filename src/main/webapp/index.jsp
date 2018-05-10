<head>
    <h4>Refugee Management System</h4>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {box-sizing: border-box}

        /* Set height of body and the document to 100% */
        body, html {
            height: 80%;
            margin: 0;
            font-family: Arial;
        }

        /* Style tab links */
        .tablink {
            background-color: #555;
            color: white;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            font-size: 17px;
            width: 15%;
        }

        .tablink:hover {
            background-color: #777;
        }

        /* Style the tab content (and add height:100% for full page content) */
        .tabcontent {
            color: red;
            display: none;
            padding: 100px 20px;
            height: 100%;
        }

        #Home {background-color: red;}
        #Info {background-color: green;}
        #Contact {background-color: blue;}
        #About{background-color: orange;}
        #Help {background-color: cadetblue}
    </style>
</head>
<body>

<button class="tablink" onclick="openPage('Home', this, 'red')">Home</button>
<button class="tablink" onclick="openPage('Info', this, 'green')" id="defaultOpen">Info</button>
<button class="tablink" onclick="openPage('Contact', this, 'blue')">Contact Us</button>
<button class="tablink" onclick="openPage('About', this, 'orange')">About Us</button>
<button class="tablink" onclick="openPage('Help', this, 'cadetblue')">Help</button>


<div id="Home" class="tabcontent">

    <p></p>
</div>

<div id="Info" class="tabcontent">

    <p></p>
</div>

<div id="Contact" class="tabcontent">

    <p></p>
</div>

<div id="About" class="tabcontent">

    <p></p>
</div>

<div id="Help" class="tabcontent">
    <p> </p>
</div>

<script>
    function openPage(pageName,elmnt,color) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].style.backgroundColor = "";
        }
        document.getElementById(pageName).style.display = "block";
        elmnt.style.backgroundColor = color;

    }
    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
</script>

</body>