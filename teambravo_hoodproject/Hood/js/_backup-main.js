// main js for hood app
// created by: Marcos DeSousa
// date: jan.09.2012

// -------------------- look up scriptdata to have the upload working with php and connnecting to my database --------------------------//
$(document).ready(function(){
	$('#uploadifyit').uploadify({
		'uploader'    : '/Hood/js/uploadify/uploadify.swf',
		'script'      : '/Hood/js/uploadify/uploadify.php',
		'cancelImg'   : '/Hood/js/uploadify/cancel.png',
		'folder'      : '/Hood/js/uploads',
		'multi'       : true,
	  	'fileExt'        : '*.jpg;*.gif;*.png',
	  	'fileDesc'       : 'Image Files (.JPG, .GIF, .PNG)',
	  	'queueSizeLimit' : 9,
	  	'simUploadLimit' : 9,
	  	'sizeLimit'   : 1048576,
	  	'onSelectOnce'   : function(event,data) {
		  $('#status-message').text(data.filesSelected + ' files have been added to the queue.');
		},
	  	'onAllComplete'  : function(event,data) {
		  $('#status-message').text(data.filesUploaded + ' files uploaded, ' + data.errors + ' errors.');
		}
	});

	$('#uploadifyit2').uploadify({
		'uploader'    : '/Hood/js/uploadify/uploadify.swf',
		'script'      : '/Hood/js/uploadify/uploadify.php',
		'cancelImg'   : '/Hood/js/uploadify/cancel.png',
		'folder'      : '/Hood/js/uploads',
		'multi'       : false,
	  	'fileExt'        : '*.jpg;*.gif;*.png',
	  	'fileDesc'       : 'Image Files (.JPG, .GIF, .PNG)',
	  	'queueSizeLimit' : 1,
	  	'simUploadLimit' : 1,
	  	'sizeLimit'   : 1048576,
	  	'onSelectOnce'   : function(event,data) {
		  $('#status-message').text(data.filesSelected + ' files have been added to the queue.');
		},
	  	'onAllComplete'  : function(event,data) {
		  $('#status-message').text(data.filesUploaded + ' files uploaded, ' + data.errors + ' errors.');
		}
	});

	$('#slides').slides({
		preload: true,
		preloadImage: 'images/slider/loading.gif',
		play: 5000,
		pause: 2500,
		hoverPause: true,
		animationStart: function(current){
			$('.caption').animate({
				bottom:-35
			},100);
			if (window.console && console.log) {
				// example return of current slide number
				console.log('animationStart on slide: ', current);
			};
		},
		animationComplete: function(current){
			$('.caption').animate({
				bottom:0
			},200);
			if (window.console && console.log) {
				// example return of current slide number
				console.log('animationComplete on slide: ', current);
			};
		},
		slidesLoaded: function() {
			$('.caption').animate({
				bottom:0
			},200);
		}
	});//close slider carrossel
	
	
	$('.loginBtn a').click(function(){	
		$('.login-dropdown').slideToggle();
		
		//$('.login-dropdown').css({display: 'none'});
		
	});//close login click function
	
	
	// ----------------------------------------  NEW PROJECT VALIDATION ---------------------------------------- //
	$('#addProjectBtn').click(function(){
		console.log("add new project button click");
		
		var projectNameInput = $('#projectNameInput'),
			projectDescriptionInput = $('#projectDescriptionInput')
		;//close variables
		
		//--------------- new project name check ----------------//
		if(projectNameInput.val() == ''){
			$('.projectNameCheck').fadeIn();
			projectNameInput.css({backgroundColor: '#ffd7d7', color: '#333'});
		}else{
			$('.projectNameCheck').fadeOut();
			projectNameInput.css({backgroundColor: '#f0ffdb', color: '#888'});
		}//close projectNameInput validation
		
		//--------------- new project description check ----------------//
		if(projectDescriptionInput.val() == ''){
			$('.projectDescriptionCheck').fadeIn();
			projectDescriptionInput.css({backgroundColor: '#ffd7d7', color: '#333'});
		}else{
			$('.projectDescriptionCheck').fadeOut();
			projectDescriptionInput.css({backgroundColor: '#f0ffdb', color: '#888'});
		}//close projectDescriptionInput validation
	});//close add project button
	
	// ---------------------------------------- EDIT PROFILE VALIDATION ---------------------------------------- //
	$('#saveProfileBtn').click(function(){
		var userNameInput = $('#userEditName'),
			userSchoolInput = $('#userEditSchool'),
			userBioInput = $('#userEditBio'),
			userEmailInput = $('#userEditEmail')
		;//close variables
		
		//--------------- edit user name check ----------------//
		if(userNameInput.val() == ''){
			userNameInput.css({backgroundColor: '#ffd7d7', color: '#333'});
			$('.userNameCheck').fadeIn();
			//console.log("\n name empty");
		}else{
			userNameInput.css({backgroundColor: '#f0ffdb', color: '#333'});
			$('.userNameCheck').fadeOut();
			//console.log("\n name not empty");
		}
		
		//--------------- edit user school check ----------------//
		if(userSchoolInput.val() == ''){
			userSchoolInput.css({backgroundColor: '#ffd7d7', color: '#333'});
			$('.userSchoolCheck').fadeIn();
			//console.log("school empty");
		}else{
			userSchoolInput.css({backgroundColor: '#f0ffdb', color: '#888'});
			$('.userSchoolCheck').fadeOut();
			//console.log("schhol not empty");
		}
		
		//--------------- edit user bio check ----------------//
		if(userBioInput.val() == ''){
			userBioInput.css({backgroundColor: '#ffd7d7', color: '#333'});
			$('.userBioCheck').fadeIn();
			//console.log("bio empty");
		}else{
			userBioInput.css({backgroundColor: '#f0ffdb', color: '#333'});
			$('.userBioCheck').fadeOut();
			//console.log("bio not empty");
		}
		
		//--------------- edit user email check ----------------//
		if(userEmailInput.val() == ''){
			userEmailInput.css({backgroundColor: '#fff', color: '#ffd7d7'});
			//console.log("email empty");
		}else{
			userEmailInput.css({background: 'url("../images/pattern/50opacity.png") repeat', color: '#fff'});
			//console.log("email not empty");
		}
	});//close save profile button
	
	
	// ---------------------------------------- FANCY BOX ON THUMBNAILS ---------------------------------------- //
	$("a[rel=projectScreenShots]").fancybox({
		'overlayShow'	: false,
		'transitionIn'	: 'elastic',
		'transitionOut'	: 'elastic',
		'titlePosition' 	: 'over',
		'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
			return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
		}
	});
	
	/*
	$(".thumbNail-title").click(function(){
		$("a[rel=projectScreenShots]").fancybox({
			'overlayShow'	: false,
			'transitionIn'	: 'elastic',
			'transitionOut'	: 'elastic',
			'titlePosition' 	: 'over',
			'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
				return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
			}
		});
	});
	*/
	
	// ---------------------------------------- SIGN UP FORM VALIDATION ---------------------------------------- //
	$('#signUpBtn').click(function(){
		var userNameInput = $('#signUpUserNameInput'),
			userPasswordInput = $('#signUpUserPasswordInput'),
			userRePasswordInput = $('#signUpUserRePasswordInput'),
			userEmailInput = $('#signUpUserEmailInput')
		;//close variables
		
		//--------------- signup user name check ----------------//
		if(userNameInput.val() == ''){
			userNameInput.css({backgroundColor: '#ffd7d7', color: '#333'});
			$('.signUpUserName').fadeIn();
			//console.log("\n name empty");
		}else{
			userNameInput.css({backgroundColor: '#f0ffdb', color: '#333'});
			$('.signUpUserName').fadeOut();
			//console.log("\n name not empty");
		}
		
		//--------------- signup user password check ----------------//
		if(userPasswordInput.val() == ''){
			userPasswordInput.css({backgroundColor: '#ffd7d7', color: '#333'});
			$('.signUpUserPassword').fadeIn();
			//console.log("\n name empty");
		}else{
			userPasswordInput.css({backgroundColor: '#f0ffdb', color: '#333'});
			$('.signUpUserPassword').fadeOut();
			//console.log("\n name not empty");
		}
		
		//--------------- signup user re password check ----------------//
		if(userRePasswordInput.val() == ''){
			userRePasswordInput.css({backgroundColor: '#ffd7d7', color: '#333'});
			$('.signUpUserRePassword').fadeIn();
			//console.log("\n name empty");
		}else{
			userRePasswordInput.css({backgroundColor: '#f0ffdb', color: '#333'});
			$('.signUpUserRePassword').fadeOut();
			//console.log("\n name not empty");
		}
		
		//--------------- signup user email check ----------------//
		if(userEmailInput.val() == ''){
			userEmailInput.css({backgroundColor: '#ffd7d7', color: '#333'});
			$('.signUpUserEmail').fadeIn();
			//console.log("\n name empty");
		}else{
			userEmailInput.css({backgroundColor: '#f0ffdb', color: '#333'});
			$('.signUpUserEmail').fadeOut();
			//console.log("\n name not empty");
		}
		
	});//close sign up form validation
})