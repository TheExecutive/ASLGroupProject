<cfform method="post" action="?event=General.loginUser">
    Username<br /><cfinput name="username" id="username" type="text" required="yes"><br />
    Password<br /><cfinput name="password" id="password" type="password" required="yes"><br />
    <input class="gbutton" type="submit" value="Login"/>
</cfform>

<cfdump var="#rc#">
<cfdump var="#event#">