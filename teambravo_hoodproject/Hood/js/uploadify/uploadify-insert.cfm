<cffunction name="createNewProject" access="public">
	<cfargument name="userId" type="any">
	<cfargument name="projectName" type="string">
	<cfargument name="projectDesc" type="string">

	<cfquery name="addNewProject" datasource="aslgroup">
		insert into projects(userId, projectTitle, projectDescription) 
				values(
					<cfqueryparam value="#userId#">,
					<cfqueryparam value="#projectName#">,
					<cfqueryparam value="#projectDesc#">
				);
	</cfquery>
	
</cffunction>

<cffunction name="test1" access="public">
	<cfquery name="getMostRecentProject" datasource="aslgroup" result="mostRecent">
	select projectId
		from projects
		order by projectId desc
		limit 1;
	</cfquery>
	
	<cfreturn getMostRecentProject>
</cffunction>

<cffunction name="test2" access="public">
	<cfquery name="updateScreens" datasource="aslgroup">
	insert into projectScreenshots (projectId, projectScreenshotFilePath, projectScreenThumbFilePath, projectScreenFeaturedThumbFilePath)
		values(
			<cfqueryparam value="32">,
			<cfqueryparam value="images/userUpload/project-regular.jpg">,
			<cfqueryparam value="images/userUpload/project-thumb.jpg">,
			<cfqueryparam value="images/userUpload/project-featured.jpg">);
</cfquery>
</cffunction>

<cfset createNewProject(form.userid, form.pName, form.pDes)>

<cfset mostRecentProject = test1()>
