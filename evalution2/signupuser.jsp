
<html xml:lang="en" lang="en">
    <head>
	
<link rel="icon" href="images/logo1.png" type="img/jpg/png" >
        <title>fill detail Form</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="css/default.css"/>
    </head>
    <body>    
        <form action="update_user.jsp" class="register">
            <h1>user signup form</h1>
            <fieldset class="row1">
                <legend>Account Details
                </legend>
                <p>
                    <label>Email *
                    </label>
                    <input type="email"/ name="e1" required>
                   
                </p>
                <p>
                    <label>Password*
                    </label>
                    <input type="password"/ name="p1" required>
                    <label class="obinfo">* obligatory fields
                    </label>
                </p>
            </fieldset>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>Name *
                    </label>
                    <input type="text" class="long"/ name="n1" required>
                </p>
                <p>
                    <label>Phone *
                    </label>
                    <input type="number" min="1111111111" max="9999999999"/ name="ph1" required>
                </p>
                    
                <p>
                    <label>location *
                    </label>

                    <select name="lo1" required>
                        <option value="1">Delhi
                        </option>
                        <option value="2">Mumbai
                        </option>
                        <option value="3">Lucknow
                        </option>
                        <option value="4">Kanpur
                        </option>
                        
                    </select></p>

                </p>
                           </fieldset>
            <fieldset class="row3">
                :) :)
            </fieldset>
            <fieldset class="row4">
                <legend>Terms and Mailing
                </legend>
                
                <p class="agreement">
                    <input type="checkbox" name="agre" value="true"/ >
                    <label>I want to receive personalized offers by your site</label>
                </p>
                <p class="agreement">
                    <input type="checkbox" name="allow" value="true"/ >
                    <label>Allow partners to send me personalized offers and related services</label>
                </p>
            </fieldset>
            <div><button class="button">Register &raquo;</button>

        </form>
    </body>
</html>





