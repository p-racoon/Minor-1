<html>
<head>

<link rel="icon" href="images/logo1.png" type="img/jpg/png" >
	<title>Seller Registration</title>
	<link rel="stylesheet" href="formHomeCSS.css">
 <script type="text/javascript" src="FormValidation.js"></script>
        <script type="text/javascript">

function validate(form){
    var email = form.e1.value;
    var password1 = form.p1.value;
    var password2 = form.p2.value;
    var errors = [];
    
    if (!checkEmail(email)) {
        errors[errors.length] = "You must enter a valid email address.";
    }

    if (!checkLength(password1)) {
        errors[errors.length] = "You must enter a password.";
    }
    else if (compareValues(password1, password2) !== 0) {
        errors[errors.length] = "Passwords don't match.";
    }

    if (errors.length > 0) {
        reportErrors(errors);
        return false;
    }

    return true;
}

function reportErrors(errors){
    var msg = "There were some problems...\n";
    var numError;
    for (var i = 0; i<errors.length; i++) {
        numError = i + 1;
        msg += "\n" + numError + ". " + errors[i];
    }
    alert(msg);
}
</script>
</head>
<body>
	<div id="bar1" >
      <div id="leftSideBar1">
        <div id="logo">
          <img src="images/logo1.png" style="margin-left:20px;height:40px; width:40px;">
        </div>
        <a id="logoName" href="index.html">ShadiWadi.com </a>
      </div>
      <div id="rightSideBar1">

        <div id="SearchBar">
          <form action="./results.php" method="get">
          <input type="text" name="Search" size="30" maxlength="255" placeholder="Search Here...">
          <input type="submit" value="Search"/> 
          </form>

        </div>
        <div id="LogButtons">
          <!--<a href="#">test1</a>
          <a href="#">test2</a>-->
          <!--
          <button>Log In</button>
          <button>Sign Up</button>-->
          <a href="" class="LogButtonClass">Log Out</a>
          <!--<a href="" class="LogButtonClass">Sign Up</a>-->
        </div>
        <div id="profile">
                               	 <a href="" id="user" >
		</a>	 
        </div>
      </div>
    </div>
<!--
    <div id="bar2">
      <div id="leftSideBar2"></div>
      <div id="rightSideBar2">

        <div id="pageMenu">
          <a href="">Home</a>
          <a href="">Halls</a>
          <a href="">Pandit</a>
          <a href="">Jewellery</a>
          <a href="">Travel</a>
          <a href="">Photography</a>
          <a href="">Food</a>
          <a href="">Security</a>
        </div>
        </div>
      </div>
    </div>-->
	
    <script type="text/javascript">

function showhideForm(showform1) {
   document.getElementById("formBox").style.display = 'block';
    if (showform1 == "Halls") {
        document.getElementById("typeHalls").style.display = 'block';
        document.getElementById("typePandit").style.display = 'none';
        document.getElementById("typeJewellery").style.display = 'none';
        document.getElementById("typeTravel").style.display = 'none';
        document.getElementById("typePhotography").style.display = 'none';
        document.getElementById("typeFood").style.display = 'none';
        document.getElementById("typeSecurity").style.display = 'none';
    } 
        
        if (showform1 == "Pandit") {
		
		
        document.getElementById("typeHalls").style.display = 'none';
		document.getElementById('showformH').checked = false;
		document.getElementById('showformPA').checked = true;
		document.getElementById('showformJ').checked = false;
		document.getElementById('showformT').checked = false;
		document.getElementById('showformPH').checked = false;
		document.getElementById('showformF').checked = false;
		document.getElementById('showformS').checked = false;
        document.getElementById("typePandit").style.display = 'block';
        document.getElementById("typeJewellery").style.display = 'none';
        document.getElementById("typeTravel").style.display = 'none';
        document.getElementById("typePhotography").style.display = 'none';
        document.getElementById("typeFood").style.display = 'none';
        document.getElementById("typeSecurity").style.display = 'none';

    } 
        if (showform1 == "Jewellery") {
        document.getElementById("typeHalls").style.display = 'none';
        document.getElementById("typePandit").style.display = 'none';
        document.getElementById("typeJewellery").style.display = 'block';
        document.getElementById("typeTravel").style.display = 'none';
        document.getElementById("typePhotography").style.display = 'none';
        document.getElementById("typeFood").style.display = 'none';
        document.getElementById("typeSecurity").style.display = 'none';

    } 
        if (showform1 == "Travel") {
        document.getElementById("typeHalls").style.display = 'none';
        document.getElementById("typePandit").style.display = 'none';
        document.getElementById("typeJewellery").style.display = 'none';
        document.getElementById("typeTravel").style.display = 'block';
        document.getElementById("typePhotography").style.display = 'none';
        document.getElementById("typeFood").style.display = 'none';
        document.getElementById("typeSecurity").style.display = 'none';

    } 
        if (showform1 == "Photography") {
        document.getElementById("typeHalls").style.display = 'none';
        document.getElementById("typePandit").style.display = 'none';
        document.getElementById("typeJewellery").style.display = 'none';
        document.getElementById("typeTravel").style.display = 'none';
        document.getElementById("typePhotography").style.display = 'block';
        document.getElementById("typeFood").style.display = 'none';
        document.getElementById("typeSecurity").style.display = 'none';

    } 
        if (showform1 == "Food") {
        document.getElementById("typeHalls").style.display = 'none';
        document.getElementById("typePandit").style.display = 'none';
        document.getElementById("typeJewellery").style.display = 'none';
        document.getElementById("typeTravel").style.display = 'none';
        document.getElementById("typePhotography").style.display = 'none';
        document.getElementById("typeFood").style.display = 'block';
        document.getElementById("typeSecurity").style.display = 'none';

    } 
        if (showform1 == "Security") {
        document.getElementById("typeHalls").style.display = 'none';
        document.getElementById("typePandit").style.display = 'none';
        document.getElementById("typeJewellery").style.display = 'none';
        document.getElementById("typeTravel").style.display = 'none';
        document.getElementById("typePhotography").style.display = 'none';
        document.getElementById("typeFood").style.display = 'none';
        document.getElementById("typeSecurity").style.display = 'block';

    } 
  
  /*  if (showform == "no") {
        document.getElementById("div2").style.display = 'block';
        document.getElementById("div1").style.display = 'none';
    }*/
}

</script >

	<script type="text/javascript">
	</script>
	
    <div id="container">
    	<span>
        <div id="refinePanel">
          <div id="refineByCategory">
            <h1 style="padding-top:10px;padding-left:10px;"> Categories</h1>	
			
<!--
           <form>
              <h3><input type="radio" id="showform" value="Halls" name="showform" onchange="showhideForm(this.value);"/>Halls</h3><br>
              <h3><input type="radio" id="showform" value="Pandit" name="showform" onchange="showhideForm(this.value);"/>Pandit</h3><br>
              <h3><input type="radio" id="showform" value="Jewellery" name="showform" onchange="showhideForm(this.value);"/>Jewellery</h3><br>
              <h3><input type="radio" id="showform" value="Travel" name="showform" onchange="showhideForm(this.value);"/>Travel</h3><br>
              <h3><input type="radio" id="showform" value="Photography" name="showform" onchange="showhideForm(this.value);"/>Photography</h3><br>
              <h3><input type="radio" id="showform" value="Food" name="showform" onchange="showhideForm(this.value);"/>Food</h3><br>
              <h3><input type="radio" id="showform" value="Security" name="showform" onchange="showhideForm(this.value);"/>Security</h3><br>

            </form>-->
            <!--
            <a href="formHalls.html">Halls</a><br>
            <a href="formPandit.html">Pandit</a><br>
            <a href="formJewellery.html">Jewellery</a><br>
            <a href="formTravel.html">Travel</a><br>
            <a href="formPhotography.html">Photography</a><br>
            <a href="formFood.html">Food</a><br>
            <a href="formSecurity.html">Security</a>-->
            <hr>
          </div>
        </div>
      </span>

    <span>
    	<div id="dispResults">
        <!--<h2 id="currentCategory" style="font-family: Segoe UI,Arial,sans-serif ;">Category</h2>-->
        <h2 id="currentCategory" style="font-family: Segoe UI,Arial,sans-serif ;">Please Choose a Category from left side of the panel</h2>
        <hr>
        <div class="sellerForm">
          <!--<div class="pic"></div>
          <p class="sellerName" style="text-weight:bold; font-size:25px;">Seller Name</p>
          <hr style="margin: 0.1px;">
          <input type="button" value="Add Another Buissness">-->
          <div class="box" id="formBox" >
          <form id="mainForm" method="post" onsubmit="return validate(this);" action="updatetable.jsp">
            Company Name:
            <input type="text" name="Name" required>
            <br>
            
           
            <hr>
            Enter Company Phone no.:*
            <input type="number" name="phNumber1" maxlengtth="10" min="1111111111" max="9999999999" required><br>
            Enter Alternate Phone no.:
            <input type="number" name="phNumber2" maxlengtth="10" min="1111111111" max="9999999999">
            <hr>
            Enter Company Location:*
            <input type="text" placeholder="select city" name="location" required><br>
            Enter your Address:*
            <input type="text" name="Locality" placeholder="Locality"  required>
            <input type="text"  name="Society" placeholder="Street/Society Name" required>
            <input type="text"  name="Landmark" placeholder="Landmark" >
            <input type="text"  name="officeNo" placeholder="Office no."  required>
            <hr>
            Choose the Best-fit Type you all in:*
            <br><br><br><br><br><br>
            <div id="type">
            <div id="typeHalls" style="display:none">
             <select name="ty1" required >
              <option value="type1">large hall</option>
              <option value="type2">mediumhall</option>
              <option value="type3">small hall</option>
              <option value="type4">for Stay</option>
              <option value="type5">other</option>
            </select>
            <!--<div> Enter Capacity: <input type="number"  name="capacity" placeholder="Hall Capacity"  required></div>-->
            </div>
			 <div>
              <input type="radio" id="showformH" value="Halls" name="showform" onchange="showhideForm(this.value);"/>Halls<br>
              <input type="radio" id="showformPA" value="Pandit" name="showform" onchange="showhideForm(this.value);"/>Pandit<br>
              <input type="radio" id="showformJ" value="Jewellery" name="showform" onchange="showhideForm(this.value);"/>Jewellery<br>
              <input type="radio" id="showformT" value="Travel" name="showform" onchange="showhideForm(this.value);"/>Travel<br>
              <input type="radio" id="showformPH" value="Photography" name="showform" onchange="showhideForm(this.value);"/>Photography<br>
              <input type="radio" id="showformF" value="Food" name="showform" onchange="showhideForm(this.value);"/>Food<br>
              <input type="radio" id="showformS" value="Security" name="showform" onchange="showhideForm(this.value);"/>Security<br>
			<div>
            
            <div id="typePandit" style="display:none">
             <select name="ty1" required >
              <option value="type1">Hindu</option>
              <option value="type2">Muslim</option>
              <option value="type3">Christian</option>
              <option value="type4">Sikh</option>
              <option value="type5">other</option>
            </select>
            </div>
            
            <div id="typeJewellery" style="display:none">
             <select name="ty1" required >
              <option value="type1">real</option>
              <option value="type2">fake</option>
              <option value="type3">rent</option>
              <option value="type4">paltinum</option>
              <option value="type5">other</option>
            </select>
            </div>
            
            <div id="typeTravel" style="display:none">
             <select name="ty1" required >
              <option value="type1">Luxury Car</option>
              <option value="type2">ghodhi</option>
              <option value="type3">Pvt. Taxi</option>
              <option value="type4">Bus</option>
              <option value="type4">Loaders</option>
              <option value="type5">other</option>
            </select>
            </div>
            
             <div id="typePhotography" style="display:none">
             <select name="ty1" required >
              <option value="type1">Photo</option>
              <option value="type2">Video</option>
              <option value="type5">other</option>
            </select>
            </div>
            
            <div id="typeFood" style="display:none">
             <select name="ty1" required >
              <option value="type1">Veg</option>
              <option value="type2">Veg+NonVeg</option>
              <option value="type3">Fast Food</option>
              <option value="type4">drinks</option>
              <option value="type5">other</option>
            </select>
            </div>
            
            <div id="typeSecurity" style="display:none">
             <select name="ty1" required >
              <option value="type1">full time</option>
              <option value="type2">armed</option>
              <option value="type3">unarmed</option>
              <option value="type4">on the Go</option>
              <option value="type5">other</option>
            </select>
            </div>
            </div>
            <br><br><br><br><br><br>
            
            Give us some infomation about your Buisness(it will be displayed in your info):*<br>
            <textarea ROWS="5" COLS="100" Placeholder="Enter your details here" style="margin-top:10px;" name="info" required></textarea><br>
            Enter your Price:*<input type="number" name="LowerPR" placeholder="Lower Price Range">   <input type="number" name="HigherPR" placeholder="Higher Price Range">
            <hr>
            Add some Pics: <input type="file" name="pic" accept="image/*">
            <hr>
            Click Here When Ready:
            <input type="submit" value="Submit" required><br>
            Click Here to Reset form:
            <input type="button" value="Reset" onclick="document.getElementById('mainForm').reset();">
            
            
          </form>
          </div>
        </div>
    	</div>
    </div>
    </span>
    <div id="footer">
      <a href="AboutUs1.html">About Us</a>
      <a href="ContactUs1.html">Contact Us</a>
    </div>
</body>
</html>