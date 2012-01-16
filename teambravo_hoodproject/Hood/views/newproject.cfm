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
						New Project
					</span>
				</div><!--close navigation-->
				
				<!-- --------------------------- LEFT SIDE ----------------------- -->
				<div class="leftSide">
					<div class="title">
						New Project
					</div><!-- close title -->
					
					<div class="subTitle">
						Form
					</div><!-- close subtitle class -->
					
					<cfform method="post" action="http://localhost:9999/Hood/js/uploadify/uploadify.cfm" id="ProjectForm" name="ProjectForm">
						<div class="projectForm">
							<div class="formSection">
								<p>Project Name :</p>
								<span class="errorCheck projectNameCheck">Dude, a project with no name? really?</span>
								
								<input name="projectname" id="projectname" type="text" />
							</div><!-- close formSection class -->
							
							<div class="formSection">
								<p>Project Description :</p>
								<span class="errorCheck projectDescriptionCheck">Tell us what this project is about dude...</span>
								
								<textarea name="projectdescription" id="projectdescription"></textarea>
							</div><!-- close formSection class -->
							
							<cfinput id="userId" class="hideThis" type="text" name="userId" value="#rc.currentuser.userId#"/>
							
							<cfinput id="uniqueId" class="hideThis" type="text" name="uniqueId" value="#rc.uniqueId#"/>
							
							<!-- •••••••••••••••••••••••••••• UPLOADIFY VERSION 1 WORKING •••••••••••••••••••••••••••• -->
							<div class="uploadifyBox">
								<input id="uploadifyit" type="file" name="Filedata"/>
								
								<a id="clearbutton" title="clear upload list" href="javascript:$('#uploadifyit').uploadifyClearQueue();">Clear Queue</a>
								
								<!---<button type="submit" name="" value="" class="greenBtn" id="addProjectBtn">ADD THIS YO' 22</button>--->
								
								<a id="uploadbutton" title="upload files" name="uploadbutton" href="javascript:$('#uploadifyit').uploadifyUpload();">Add this Yo'</a>
								
								<div id="fileinfotarget"></div>
							</div><!-- close uploadifyBox class -->	
						</cfform>
						
					
						<div class="formTips">
							<ul>
								<li>Select an image file on your computer.</li>
								<li>Make sure its not larger than 1Mb big.</li>
								<li>Clear Photos are better for viwers to view your work.</li>
								<li>The more photos you have the better you will advertise your work.</li>
							</ul>
						</div><!-- close formTips class -->
						
					</div><!--close form class -->
					
				</div><!--close left side-->
					
				<!-- --------------------------- RIGHT SIDE ----------------------- -->
				<div class="rightSide">
					<div class="title">
						Professional Facts
					</div><!-- close title -->
					
					<div class="subTitle">
						By: Eduard Vahan
					</div><!-- close subtitle class -->
					
					<div class="subContent">
						<p>A portfolio is a binder or book that shows off your work and abilities. It goes beyond a cover letter and a résumé. A portfolio is a job-hunting tool that you develop that gives employers a picture of who you are—your experience, your education, your accomplishments, and your skills. Not only does it show the employer who you are, but it also displays what you have the potential to become. It is designed to do one thing—to support you as you market yourself!</p>
	
						<p>You should start developing your portfolio by first doing a self-assessment. Evaluate what you have to offer and what the best ways are to market your assets. You should decide which skills and experiences you have will relate to the needs of the interviewer, or what you would most like the interviewer to see. If you have don't have much work experience—most students don't—you'll need to mine your school work, volunteer work, and hobbies for evidence of the relevant skills you know you have. For example, if you did event promotions for a campus organization, include a copy of a flyer or poster you designed.</p>
		
						<p>Have a faculty member or someone at the Career Center review and critique your portfolio. Develop a condensed version of your portfolio, containing your most important accomplishments to leave with your interviewer. It could be in an inexpensive report cover or folder. This provides  something physical to remind the interviewer that you were there. It also provides you an occasion for an additional contact in a week or so to arrange for its pickup. Make sure you do not include original materials in which you only have one copy!</p>
					</div><!-- close subContent class -->
					
					<div class="subSource">
						source: http://dolphin1.net/network/dolphinsong/portfolio.htm
					</div><!-- close subSource class -->
					
				</div><!--close right side-->
			</div><!--close content div-->
		</div><!-- close wrapper id -->
		
		<div class="clear"></div>