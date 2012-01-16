<!-- --------------------------- CONTENT ----------------------- -->
		<div class="wrapper">
			<div id="content">
				<div id="navigation">
					<span class="userName">
						<cfif #rc.currentUser.firstname# == "" or #rc.currentUser.lastname# == "" >
							<a href="?event=General.loadProfile"><cfoutput>#rc.currentUser.username#</cfoutput></a>
						<cfelse>
							<a href="?event=General.loadProfile"><cfoutput>#rc.currentUser.firstname &' '& rc.currentUser.lastname#</cfoutput></a> &gt;
						</cfif>
					</span>
					
					<span class="projectName">
						<cfoutput>#rc.selectedProject.projectTitle[1]#</cfoutput>
					</span>
				</div><!--close navigation-->
				
				<!-- --------------------------- LEFT SIDE ----------------------- -->
				<div class="leftSide">
				
				<!---CFIF statement to handle screenshot display on the project page --->
				<cfif #rc.selectedProject.projectScreenshotId# == "">
					<!--- If the user has no screenshots for this project, run this code. The getSingleProject query in the project
					model will always return at least one line (assuming code is correct) because it's set to left join, 
					so we can't check for greater than zero here like we did in the profile page. Instead, we're checking
					to see if the projectScreenshotId is an empty string (null). If it is, we know this project has no
					screeshots. --->
					<div class="featuredSS">
						<div class="featuredSSphoto">
							<img src="images/noscreensfeatured.png" />
						</div><!--close featuredSSphoto class-->
						
						<div class="description">
							<div class="featuredSSphotoTitle">
								Show your work up in the 'Hood.
							</div><!--close featuredSSphotoTitle class-->
								
							<div class="featuredSSphotoDescription">
								This project needs some screenshots, man. Upload some.
							</div><!--close featuredSSphotoDescription class-->
						</div><!--close description class-->
					</div><!--close featuredSS class-->
				<cfelse>
					<!--- This will only run if there are screenshots to display--->
					<div class="featuredSS">
						<div class="featuredSSphoto">
							<img src="<cfoutput>#rc.selectedProject.projectScreenFeaturedThumbFilePath[1]#</cfoutput>" />
						</div><!--close featuredSSphoto class-->
						
						<div class="description">
							<div class="featuredSSphotoTitle">
								<cfoutput>#rc.selectedProject.projectScreenshotTitle[1]#</cfoutput>
							</div><!--close featuredSSphotoTitle class-->
								
							<div class="featuredSSphotoDescription">
								<cfoutput>#rc.selectedProject.projectScreenshotDescription[1]#</cfoutput>
							</div><!--close featuredSSphotoDescription class-->
						</div><!--close description class-->
					</div><!--close featuredSS class-->
				</cfif>
					
				<cfif #rc.selectedProject.recordcount# gt 1>
					<!---We're checking for greater than one because the previous
						if statement should have caught situations where there's only one
						and made it the featured screenshot. Run the following code below if there is
						more than one screenshot.--->
					<cfloop index="theIndex" from="2" to="#rc.selectedProject.recordcount#">
						<!---Running this loop one less time than the actual contents of the projects 
						which is why we're starting at two'--->
						<div class="thumbNail">
							
						<a rel="projectScreenShots" href="<cfoutput>#rc.selectedProject.projectScreenshotFilePath[theIndex]#</cfoutput>" title="Project Task View">
							<img src="<cfoutput>#rc.selectedProject.projectScreenThumbFilePath[theIndex]#</cfoutput>" />
					
							<div class="thumbNail-title">
								<cfoutput>#rc.selectedProject.projectScreenshotTitle[theIndex]#</cfoutput>
							</div><!-- close thumbNail title -->
							</a>
						</div><!-- close thumnNail class -->
					</cfloop>	
				</cfif>
				
				</div><!--close left side-->
					
				<!-- --------------------------- RIGHT SIDE ----------------------- -->
				<div class="rightSide">
					<div class="title">
						<cfoutput>#rc.selectedProject.projectTitle#</cfoutput>
					</div><!-- close title -->
					
					<div class="subTitle">
						<cfif #rc.currentUser.firstname# == "" or #rc.currentUser.lastname# == "" >
							<cfoutput>By: #rc.currentUser.username#</cfoutput>
						<cfelse>
							<cfoutput>By: #rc.currentUser.firstname &' '& rc.currentUser.lastname#</cfoutput>
						</cfif>
					</div><!-- close subtitle class -->
					
					<div class="subContent">
						<p><cfoutput>#rc.selectedProject.projectDescription#</cfoutput></p>
					</div><!-- close subContent class -->
					
					<div class="subSource">
						
					</div><!-- close subSource class -->
					
				</div><!--close right side-->
			</div><!--close content div-->
		</div><!-- close wrapper id -->
		
		<div class="clear"></div>