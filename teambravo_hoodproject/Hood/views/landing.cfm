<!-- --------------------------- CONTENT ----------------------- -->
		<div class="wrapper">
			<div id="content">
				
				<!-- --------------------------- LEFT SIDE ----------------------- -->
				<div class="leftSide">
					
					<div id="slides">
						<div class="slides_container">
							<div class="slide">
								<img src="img/slide-1.jpg" width="570" height="270" alt="Slide 1">
								<div class="caption" style="bottom:0">
									<p>Join the "hood" and share your work with the hood.</p>
								</div>
							</div>
							<div class="slide">
								<img src="img/slide-2.jpg" width="570" height="270" alt="Slide 2">
							</div>
							<div class="slide">
								<img src="img/slide-3.jpg" width="570" height="270" alt="Slide 3">
							</div>
							<div class="slide">
								<img src="img/slide-4.jpg" width="570" height="270" alt="Slide 4">
							</div>
							<div class="slide">
								<img src="img/slide-5.jpg" width="570" height="270" alt="Slide 5">
							</div>
							<div class="slide">
								<img src="img/slide-6.jpg" width="570" height="270" alt="Slide 6">
							</div>
							<div class="slide">
								<img src="img/slide-7.jpg" width="570" height="270" alt="Slide 7">
							</div>
						</div>
						<a href="#" class="prev"><img src="img/arrow-prev.png" width="24" height="43" alt="Arrow Prev"></a>
						<a href="#" class="next"><img src="img/arrow-next.png" width="24" height="43" alt="Arrow Next"></a>
					</div>
					<img src="img/example-frame.png" width="739" height="341" alt="Example Frame" id="frame">
				</div>
					
				</div><!--close left side-->
					
				<!-- --------------------------- RIGHT SIDE ----------------------- -->
				<div class="rightSide">
					<cfform method="post" action="?event=General.signUpUser" enctype="multipart/form-data" name="signUpForm" id="signUpForm">
					<div class="formSection">
						Username <span class="SignUperrorCheck signUpUserName">enter a username dude</span>
						
						<cfinput name="username" id="signUpUserNameInput" type="text" required="yes" validate="regular_expression" pattern="^$([a-zA-Z])[a-zA-Z_-]*[\w_-]*[\S]$|^([a-zA-Z])[0-9_-]*[\S]$|^[a-zA-Z]*[\S]$" message="Oops! Please type a valid username. It cannot contain spaces or special characters." />
					</div><!-- close formSection class -->
					
					<div class="formSection">
						Password <span class="SignUperrorCheck signUpUserPassword">enter a password yo'</span>
						
						<cfinput name="password" id="signUpUserPasswordInput" required="yes" type="password" validate="regular_expression" pattern="^$[A-Za-z]\w{6,}[A-Za-z]$" message="Your password needs to be at least 8 characters long." />
					</div><!-- close formSection class -->
					
					<div class="formSection">
						Retype-Password <span class="SignUperrorCheck signUpUserPassword">you sure the password match ?</span>
						
						<cfinput name="repass"  id="signUpUserRePasswordInput" required="yes" type="password" validate="regular_expression" pattern="^$[A-Za-z]\w{6,}[A-Za-z]$" message="Your password needs to be at least 8 characters long."/>
					</div><!-- close formSection class -->
					
					<div class="formSection">
						Email <span class="SignUperrorCheck signUpUserEmail">you sure this is the right email ?</span>
						
						<cfinput name="email"  id="signUpUserEmailInput" required="yes" type="text" validate="email" />
					</div><!-- close formSection class -->
						
					<!--- Test backup upload in case uploadify will not work --->
					<div class="formSection">
					Profile Picture<br />
						<cfinput id="upload" type="file" name="Filedata" validate="regular_expression" pattern=".+\.(?:(jpg|gif|png|jpeg|JPG|GIF|PNG|JPEG))" message="Please use a gif, jpeg, or png image"/>
					</div>
					<!-- ¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥ UPLOADIFY VERSION 1 WORKING ¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥ -->
					<!---<div class="SignUp-uploadifyBox">
						Profile Picture<br />
						<cfinput id="uploadifyit2" type="file" name="Filedata" validate="regular_expression" pattern=".+\.(?:(jpg|gif|png|jpeg))" message="Please use a gif, jpeg, or png image"/>
						<div id="fileinfotarget"></div>
					</div><!-- close uploadifyBox class -->
					--->
					
					<div class="formSection">
						<button id="signUpBtn" type="submit" name="" value="" class="greenBtn">LET ME JOIN THIS YO'</button>
					</div><!-- close login section -->
					</cfform>
				</div><!--close right side-->
			</div><!--close content div-->
		</div><!-- close wrapper id -->
		
		<div class="clear"></div>