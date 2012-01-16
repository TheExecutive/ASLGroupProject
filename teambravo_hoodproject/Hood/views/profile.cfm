		<!-- --------------------------- CONTENT ----------------------- -->
		<div class="wrapper">
			<div id="content">
			
				<!-- --------------------------- LEFT SIDE ----------------------- -->
				<div class="leftSide">
					<!-- profile pic size : 220px - 300px -->
					
					<div class="profilePhoto">
						<cfif #rc.currentUser.avatar# == "">
							<img src="images/noprofilepic.png" alt="<cfoutput>#rc.currentUser.username#</cfoutput>'s profile picture" title="<cfoutput>#rc.currentUser.username#</cfoutput>'s profile picture">
						<cfelse>
							<img src="<cfoutput>#rc.currentUser.avatar#</cfoutput>" alt="<cfoutput>#rc.currentUser.username#</cfoutput>'s profile picture" title="<cfoutput>#rc.currentUser.username#</cfoutput>'s profile picture">
						</cfif>
						
						<div class="userContact">
							<div class="userContactContent"><cfoutput>#rc.currentUser.email#</cfoutput></div>
						</div><!--close userContact class -->
					</div><!-- close profilePhoto -->
				
					<div class="title">
						<cfif #rc.currentUser.firstname# == '' and #rc.currentUser.lastname# == ''>
							<cfoutput>#rc.currentUser.username#</cfoutput>
						<cfelse>
							<cfoutput>#rc.currentUser.firstname &" "& rc.currentUser.lastname#</cfoutput>
						</cfif>
						<span class="edit-delete">
							<a href="?event=General.editProfilePage"><img src="images/userEdit-icon.png" width="16" height="16" title="edit my info" /></a>
							<a href="?event=General.deleteUserProfile"><img src="images/userDelete-icon.png" width="16" height="16"  title="delete my account"/></a>
						</span>
					</div><!-- close title -->
					
					<div class="subTitle">
						<cfif #rc.currentUser.jobtitle# == ''>
							<cfoutput>Hood Newbie</cfoutput>
						<cfelse>
							<cfoutput>#rc.currentUser.jobtitle#</cfoutput>
						</cfif>
					</div><!-- close subtitle class -->
					
					<div class="subContent">
						<cfif #rc.currentUser.description# == ''>
							<p><cfoutput>Welcome to the 'Hood, newbie! No one knows who you are yet though. Tell the block who you are by clicking the Edit icon in the upper right.</cfoutput></p>
						<cfelse>
							<p><cfoutput>#rc.currentUser.description#</cfoutput></p>
						</cfif>
						
					</div><!-- close subContent class -->
					
					<div class="subSource">
						
					</div><!-- close subSource class -->
						
				</div><!--close left side-->
					
		<!-- --------------------------- RIGHT SIDE ----------------------- -->
				<div class="rightSide">
				
					<div class="title">
						Latest Project
						
						<span class="edit-delete">
							<a href="?event=General.newProjectPage"><img src="images/add-icon2.png" title="add new project" height="16"/></a>
						</span>
					</div><!-- close title -->
					
					
					<!--- CFIF statement to handle project display on the profile page --->
					<!---<cfdump var="#rc.returnedProjects#">
					<cfdump var="#rc.screenArr#">--->
					<cfif !#rc.returnedProjects.recordcount# gt 0>
						<!--- If the user has no projects at all--->
						<cfoutput>You don't have any projects, man. Add some to build your rep by clicking on the new project icon in the upper right.</cfoutput>
					<cfelse>
						<!---This will only run if there are projects to display--->
							<div class="featuredProject">
							<a href="?event=General.loadProject&projectid=<cfoutput>#rc.returnedProjects.projectId[1]#</cfoutput>"><!---Temp fix for link --->
								<div class="featuredProjectphoto">
									<!-- 140px - 300px -->
									<cfif rc.screenArr[1].projectScreenFeaturedThumbFilePath == "">
									<!---If there are no screens for the featured project, use the featuredno screens image --->
									<img src="images/noscreensfeaturedsmall.png" />
									<cfelse>
									<img src="<cfoutput>#rc.screenArr[1].projectScreenFeaturedThumbFilePath[1]#</cfoutput>" />
									</cfif>
							
									<div class="featuredProjectPhotoTitle">
									<!---index 1 will always be the most recent project
									so we show this as the featured one --->
									<cfoutput>#rc.returnedProjects.projectTitle[1]#</cfoutput>
									</div><!--close featuredSSphotoTitle class-->
								</div><!--close featuredSSphoto class-->
							</a>
							</div><!--close featuredSS class-->
					</cfif>
					
					<cfif #rc.returnedProjects.recordcount# gt 1>
						<!---We're checking for greater than one because the previous
						if statement should have caught situations where there's only one
						and made it the featured project. Run the following code below if there is
						more than one project.'--->
						
						<cfloop index="theIndex" from="2" to="#rc.returnedProjects.recordcount#">
							<!---Running this loop one less time than the actual contents of the projects 
							which is why we're starting at two'--->
							
								<div class="thumbNail">
									<a href="?event=General.loadProject&projectid=<cfoutput>#rc.returnedProjects.projectId[theIndex]#</cfoutput>"><!---Temp fix for link --->
									<cfif rc.screenArr[theIndex].projectScreenThumbFilePath[1] == "">
									<!---If there are no screens for the project, use the no screens image --->
									<img src="images/noscreens.png" />
									<cfelse>
									<img src="<cfoutput>#rc.screenArr[theIndex].projectScreenThumbFilePath[1]#</cfoutput>" />
									</cfif>
								
									<div class="thumbNail-title">
									<cfoutput>#rc.returnedProjects.projectTitle[theIndex]#</cfoutput>
									</div><!-- close thumbNail title -->
									</a>
							</div><!-- close thumnNail class -->
						
						</cfloop>
						
					</cfif>
					
					
				</div><!--close right side-->
			</div><!--close content div-->
		</div><!-- close wrapper id -->
		
		<div class="clear"></div>