<!---regular size screen shot upload--->
<cffunction name="regularSizeUpload" returntype="void" access="public">
	<cfargument name="uID" type="any">
	
	<cfset myImage=ImageNew(form.Filedata)>
	<cfset ImageResize(myImage,1024, "", "highQuality")>
	<cfimage source="#myImage#" action="write" destination="/Applications/Railo/webroot/Hood/images/userUpload/project-regular.jpg" overwrite="yes">
</cffunction>

<!---featured size screen shot upload--->
<cffunction name="featuredSizeUpload" returntype="void" access="public">
	<cfargument name="uID" type="any">

	<cfset myImage=ImageNew(form.Filedata)>
	<cfset ImageResize(myImage,611, "", "highQuality")>
	<cfimage source="#myImage#" action="write" destination="/Applications/Railo/webroot/Hood/images/userUpload/project-featured.jpg" overwrite="yes">
	
	<!---<cfset createNewProject(form.userId, form.projectname, form.projectdescription)>--->
</cffunction>

<!---thumbnail size screen shot upload--->
<cffunction name="thumbnailSizeUpload" returntype="void" access="public">
	<cfargument name="uID" type="any">

	<cfset myImage=ImageNew(form.Filedata)>
	<cfset ImageResize(myImage,134, "", "highQuality")>
	<cfimage source="#myImage#" action="write" destination="/Applications/Railo/webroot/Hood/images/userUpload/project-thumb.jpg" overwrite="yes">
</cffunction>

<cffunction name="createNewProject" access="public">
	<cfargument name="userId" type="any">
	<cfargument name="projectName" type="string">
	<cfargument name="projectDesc" type="string">

	<cfquery name="addNewProject" datasource="aslgroup">
		insert into 
			projects(userId, projectTitle, projectDescription) 
			values(<cfqueryparam value="#userId#">,<cfqueryparam value="#projectName#">,<cfqueryparam value="#projectDesc#">);
	</cfquery>  
</cffunction>

<cfset uniqueID = createuuid()>

<cfset regularSizeUpload(uniqueID)>
<cfset featuredSizeUpload(uniqueID)>
<cfset thumbnailSizeUpload(uniqueID)>
<cfset createNewProject(form.userId, form.projectname, form.projectdescription)>

<cfoutput> Files Uploaded </cfoutput>