<cfcomponent>
	<cffunction name="getAllProjects" returnType="query" access="public">
		
		<cfquery dataSource="aslgroup" name="allprojects">
				
				select * from projects
			
		</cfquery>
	
	<cfreturn allprojects>
		
	</cffunction>	
	
	<cffunction name="getProjectsByUser" returnType="query" access="public">
    <cfargument name="userId" type="numeric" required="yes">
		
		<cfquery dataSource="aslgroup" name="projectsbyuser">
				
				select * from projects join users on users.userId = projects.userId where projects.userId = <cfqueryparam value="#userId#"> order by projectId desc
			
		</cfquery>
	
	<cfreturn projectsbyuser>
		
	</cffunction>
    
    <cffunction name="getSingleProject" returnType="query" access="public" hint="Gets a project and all of its screenshots">
    <cfargument name="projectId" type="numeric" required="yes">
	<!--- This function will get a single project and all its screenshots, so despite it's name
	it will sometimes return more than one row--->
		<cfquery dataSource="aslgroup" name="singleproject">
				
				select * from projects p left join projectScreenshots ps on p.projectId = ps.projectId where p.projectId = <cfqueryparam value="#projectId#">
			
		</cfquery>
		<!--- Left join, because I want the result back regardless if there are screenshots or not --->
	<cfreturn singleproject>
		
	</cffunction>
	
	<cffunction name="getScreenshots" returnType="query" access="public">
    <cfargument name="projectId" type="numeric" required="yes">
		
		<cfquery dataSource="aslgroup" name="screenshots">
				
				select * from projectScreenshots where projectId = <cfqueryparam value="#projectId#"> order by projectId desc
			
		</cfquery>
	
	<cfreturn screenshots>
		
	</cffunction>
	
	<cffunction name="addProject" access="public">
    <cfargument name="user" type="string" required="true">
	<cfargument name="title" type="string" required="true">
	<cfargument name="date" type="string" required="true">
	<cfargument name="description" type="string" required="true">
    
		<cfquery dataSource="aslgroup" name="project">
		
			insert into projects (userId, projectTitle, projectDate, projectDescription) VALUES (<cfqueryparam value="#user#">, <cfqueryparam value="#title#">, <cfqueryparam value="#date#">, <cfqueryparam value="#description#">)
			
		</cfquery>
	
	</cffunction>
	
	<cffunction name="deleteProject" access="public">
	<cfargument name="projectId" type="numeric" required="true">
	
		<cfquery dataSource="aslgroup" name="deleteproject">
		
			delete FROM projects where projectId = <cfqueryparam value="#projectId#">
		
		</cfquery>
		<!---Also delete all screenshots associated with that project--->
		<cfquery dataSource="aslgroup" name="deleteprojectScreens">
		
			delete FROM projectScreenshots where projectId = <cfqueryparam value="#projectId#">
		
		</cfquery>
		
	</cffunction>
	
	<cffunction name="updateProject" access="public">
	<cfargument name="projectId" type="numeric" required="true">
	<cfargument name="projectTitle" type="string" required="true">
	<cfargument name="projectDate" type="string" required="true">
	<cfargument name="projectDescription" type="string" required="true">
	
		<cfquery dataSource="aslgroup" name="updatepost">
			
			UPDATE posts SET projectTitle = <cfqueryparam value="#projectTitle#">, projectDate = <cfqueryparam value="#projectDate#">, projectDescription = <cfqueryparam value="#projectDescription#"> Where projectId = <cfqueryparam value="#projectId#"> 
			
		</cfquery>
	
	</cffunction>
</cfcomponent>