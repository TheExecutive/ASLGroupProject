<cfcomponent>
	
	<cffunction name="getUsers" returnType="query" access="public">
	
		<cfquery datasource="aslgroup" name="allusers">
		
			select * from users
	
		</cfquery>
	
		<cfreturn allusers>
	
	</cffunction>
	
	
	<cffunction name="getUser" returnType="query" access="public">
	<cfargument name="userId" type="numeric" required="true">

		<cfquery datasource="aslgroup" name="user">
					
			SELECT * FROM users where userId = <cfqueryparam value="#userId#">
	   
		</cfquery>
	
	
		<cfreturn user>
	
	
	</cffunction>
	
	<cffunction name="addNewUser" access="public">
	<cfargument name="userObject" type="any" required="true">
		<cfquery datasource="aslgroup" name="adduser">
		
			<!---insert into users (userTypeId, username, password, email, firstname, lastname, jobtitle, avatar, phone, description) 
			values (<cfqueryparam value="2">, <cfqueryparam value="#userObject.username#">, <cfqueryparam value="#userObject.password#">, 
			<cfqueryparam value="#userObject.email#">, <cfqueryparam value="#userObject.firstname#">, <cfqueryparam value="#userObject.lastname#">, 
			<cfqueryparam value="#userObject.jobtitle#">, <cfqueryparam value="#userObject.avatar#">, <cfqueryparam value="#userObject.phone#">, 
			<cfqueryparam value="#userObject.description#">)--->
			
			insert into users (userTypeId, username, password, email, avatar) 
			values (<cfqueryparam value="2">, <cfqueryparam value="#userObject.username#">, <cfqueryparam value="#userObject.password#">, 
			<cfqueryparam value="#userObject.email#">, <cfqueryparam value="#userObject.avatar#">)
			
		</cfquery>		
	
	</cffunction>

	<cffunction name="addAdmin" access="public">
	<cfargument name="userObject" type="any" required="true">
		<cfquery datasource="aslgroup" name="adduser">
		
			insert into users (userTypeId, username, password, email, firstname, lastname, jobtitle, avatar, resume, phone, description) 
			values (<cfqueryparam value="1">, <cfqueryparam value="#userObject.username#">, <cfqueryparam value="#userObject.password#">, 
			<cfqueryparam value="#userObject.email#">, <cfqueryparam value="#userObject.firstname#">, <cfqueryparam value="#userObject.lastname#">, 
			<cfqueryparam value="#userObject.jobtitle#">, <cfqueryparam value="#userObject.avatar#">, <cfqueryparam value="#userObject.resume#">,
			<cfqueryparam value="#userObject.phone#">, <cfqueryparam value="#userObject.description#">);	
	
		</cfquery>		
	
	</cffunction>
	
	<cffunction name="deleteUser" access="public">
	<cfargument name="userId" type="numeric" required="true">
	
		<cfquery datasource="aslgroup" name="deleteuser">
		
			delete FROM users where userId = <cfqueryparam value="#userId#">
		
		</cfquery>
	
	</cffunction>
	
	<cffunction name="updateUser" access="public">
	<cfargument name="userObject" type="any" required="true">
	
		<cfquery datasource="aslgroup" name="updateuser">
	
			UPDATE users SET email = <cfqueryparam value="#userObject.email#">, firstname = <cfqueryparam value="#userObject.firstname#">, lastname = <cfqueryparam value="#userObject.lastname#">, 
			jobtitle = <cfqueryparam value="#userObject.jobtitle#">, description = <cfqueryparam value="#userObject.description#">
			Where userId = <cfqueryparam value="#userObject.userId#">
			
		</cfquery>
		
	</cffunction>
	
	<cffunction name="checkAndGetUser" access="public">
	<cfargument name="username" type="string" required="true">
	<cfargument name="password" type="string" required="true">
   
   		<cfquery name="user" datasource="aslgroup" result="myResult">
       	
       		select * from users where username=<cfqueryparam  value=#username#> and password = <cfqueryparam  value=#password#> 
    	
    	</cfquery>
        
        <cfset isLoggedIn = myResult.recordcount>
       
		<!---Make an object of the returned data. --->
		<!--- user is the name of the query--->
		<cfset objToReturn ={
			"isLoggedIn" = #isLoggedIn#,
			"returnedUser" = #user# 
			}>
			
        <cfreturn objToReturn>
        
	</cffunction>
	
	<cffunction name="getCurrentUserID" access="public">
	<cfargument name="username" type="string" required="true">
		<cfquery name="getuserID" datasource="aslgroup">
	
		select userId from user where username=<cfqueryparam value="#username#">
	
		</cfquery>
		
		<cfreturn getuserID>
	
	</cffunction>
	
	<cffunction name="uploadForProject" returntype="any" access="public">
	<cfargument name="uploadFile" type="any">
	
		<!---Create unique id for image--->
		<cfset uniqueId = createUUID()>
		
		<!---Upload full size screenshot --->
		<cfset myImage=ImageNew(uploadFile)>
		<cfset ImageResize(myImage,1024, "", "highQuality")>
		<cfimage source="#myImage#" action="write" destination="/Applications/Railo/webroot/Hood/images/userUpload/#uniqueId#_full.jpg">
		
		<!---featured size screen shot upload--->
		<cfset myImage=ImageNew(uploadFile)>
		<cfset ImageResize(myImage,611, "", "highQuality")>
		<cfimage source="#myImage#" action="write" destination="/Applications/Railo/webroot/Hood/images/userUpload/#uniqueId#_featured.jpg">
		
		<cfset myImage=ImageNew(uploadFile)>
		<cfset ImageResize(myImage,134, "", "highQuality")>
		<cfimage source="#myImage#" action="write" destination="/Applications/Railo/webroot/Hood/images/userUpload/#uniqueId#_thumb.jpeg">
		
		<!--- Create objects containing the filepaths I need and return those paths --->
		
		<cfset filePathObj = {
			"fullPath" = "images/userUpload/#uniqueId#_full.jpg",
			"featuredPath" = "images/userUpload/#uniqueId#_featured.jpg",
			"thumbPath" = "images/userUpload/#uniqueId#_thumb.jpg"
		}>
		
		<cfreturn filePathObj>
		
	</cffunction>
	
	<cffunction name="uploadForAvatar" returntype="any" access="public">
	<cfargument name="uploadFile" type="any">
	
		<!---Create unique id for image--->
		<cfset uniqueId = createUUID()>
		
		<!---Upload avatar resized --->
		<cfset myImage=ImageNew(uploadFile)>
		<cfset ImageResize(myImage,220, 300, "highQuality")>
		<cfimage source="#myImage#" action="write" destination="/Applications/Railo/webroot/Hood/images/user/#uniqueId#_avatar.jpg">
		
		<cfset profilePicPath = "images/user/#uniqueId#_avatar.jpg">
		
		<cfreturn profilePicPath>
		
	</cffunction>
</cfcomponent>