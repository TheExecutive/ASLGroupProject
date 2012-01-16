<!-- --------------------------- BANNER ----------------------- -->
		<div id="banner">
			<div class="wrapper">
				<div id="logo">
						<a href="#" title="back to home page"><img src="images/logo.png" /></a>
				</div><!--close logo div-->
	
				<div id="login">
					
					<cfset loggedin = getPlugin("applicationstorage").getVar("loggedin")>
					<cfif #loggedin# != 1>
						<span class="loginBtn">
						<a href="#">login <img src="images/login.png" /></a>
					</span><!--close login btn-->
						<!---If no user is currently logged in, show the login dropdown --->
						<!-- -------- login --------- -->
						<div class="login-dropdown">
						<form method="post" action="?event=General.loginUser">
							<div class="login-section">
								<div class="input-label">
									yo' name :
								</div><!-- close input label -->
								<div class="input-field">
									<input name="username" type="text" />
								</div><!-- close input field -->
							</div><!-- close login section -->
							
							<div class="login-section">	
								<div class="input-label">
									yo' pass :
								</div><!-- close input label -->
								<div class="input-field">
									<input name="password" type="password" />
							</div><!-- close input field -->
							</div><!-- close login section -->
							
							<div class="login-section">
								<button type="submit" name="" value="" class="greenBtn">login</button>
							</div><!-- close login section -->
						</form>
						</div><!-- close login dropdown -->
					<cfelse>
						<!---If there is a user currently logged in, don't show the dropdown, but show
						the logout link--->
						<!-- -------- logout --------- -->
						<div class="logout-link">
							Sup <span class="loggeduser"> 
								<cfif #rc.currentUser.firstname# == '' and #rc.currentUser.lastname# == ''>
									<cfoutput>#rc.currentUser.username#</cfoutput>
								<cfelse>
									<cfoutput>#rc.currentUser.firstname#</cfoutput>
								</cfif>
							</span>, <a href="?event=General.logout">get out ?</a>
							
							
							
							
							
						</div><!--close logout link -->
					</cfif>
						
						
					</div><!--close login div-->
				</div><!-- close wrapper class -->
			</div><!--close banner div-->
			