<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<?php if(!isset($poptin_values['poptin_CLIENT_ID']) || empty($poptin_values['poptin_CLIENT_ID'])){ 
		$sh_status='show';
		$dash_status = 'hide';
	}else{
		$sh_status = 'hide';
		$dash_status = 'show';
	}
	if(!isset($poptin_values['poptin_TOKEN']) || empty($poptin_values['poptin_TOKEN'])){
		$d_link_status = 'none';
		$d_link_status1 = 'block';
	}else{
		$d_link_status = 'block';
		$d_link_status1 = 'none';
	}
	?>
	
	  
 <div class="poptin-overlay" style="display: none;"></div>
	<div id="poptin_main">
		<div class="poptinLogo"><img src="<?php echo $module_img_dir;?>poptinlogo.png" alt="" > </div>
		<!--/logo-->
		<div class="poptin_forms <?php echo $sh_status; ?> poptin_registration">
		  <div class="pforms_wrap register_form">
			<div class="pforms_wrap_inner">
				<div class="pforms_head">
				   <ul>
					  <li>
						 <h3>Sign up for free</h3>
					  </li>
					  <li><a href="#" id="login_form">Already have an account?</a></li>
				   </ul>
				</div>
				<!--/pforms_head-->
				<div class="form_box">
				   <form method="post" id="popin_signup">
					  <input type="text" id="popin_email" class="input_box" name="email" placeholder="Enter your email">
					  <div class="bottom_form">
						 <input type="submit" value="Sign Up"  class="ppsubmit">
					  </div>
				   </form>
				</div>
			 </div>
			 <!--/pforms_wrap_inner-->        
		  </div>
			<!--/register_form-->
			<div class="pforms_wrap login_form" style="display:none;">
			 <div class="pforms_wrap_inner">
				<div class="pforms_head">
				   <ul>
					  <li>
						 <h3>Enter your user ID</h3>
					  </li>
					  <li><a href="#" id="register_form">Sign up for free</a></li>
				   </ul>
				</div>
				<!--/pforms_head-->
				<div class="form_box">
				   <form method="post" id="popin_id_register">
					  <input type="text" class="input_box" id="pop_up_id" placeholder="Enter your User ID" />
					  <div class="bottom_form">
						 <a class="wheremyid" href="#" data-toggle="modal" data-target=".whereis_myid">Where is my user ID? </a>
						 <input type="submit" value="Connect" class="ppsubmit" />                                        
					  </div>
				   </form>
				</div>
			 </div>
			 <!--/pforms_wrap_inner-->        
		  </div>
		  <!--/register_form-->
		</div>
		<!--/poptin_forms-->
		<div class="poptin_logged <?php echo $dash_status; ?>">
		  <div class="poptin_logged_box">
			 <h2>You're all set!</h2>
			 <div class="tinyborder"></div>
			 <span class="everythinglooks">Click on the button below<br>to manage your poptins</span>
			 <img src="<?php echo $module_img_dir;?>vicon.png" alt="">
			 <a href="<?php echo $module_ajax ; ?>&poptin_logmein=true" target="_blank" style="display:<?php echo $d_link_status ; ?>" class="ppcontrolpanel goto_dashboard_button_pp_updatable with_token">Go to Dashboard</a>
			 <a href="https://app.popt.in/overview" style="display:<?php echo $d_link_status1 ; ?>" target="_blank" class="ppcontrolpanel goto_dashboard_button_pp_updatable without_token">Go to Dashboard</a>
			 <a href="#logout" data-toggle="modal" data-target=".deactivate_poptin_popup" class="pplogout">Deactivate Poptin</a>
		  </div>
		  <!--/poptin_logged_box-->
	   </div>
	   <div class="poptin_content <?php echo $sh_status; ?> poptin_registration">
		  <h2>Create your first poptin with ease</h2>
		  <div class="tinyborder"></div>
		  <div class="pvideo_box">
			 <div class="pvideo_box_in">                        <div style="width:100%;height:100%;width: 905px; height: 509px; float: none; clear: both; margin: 2px auto;">              <embed src="https://www.youtube.com/v/R_B8L3abt7Q?version=3&amp;hl=en_US&amp;rel=0&amp;showinfo=0" wmode="transparent" type="application/x-shockwave-flash" width="100%" height="100%" allowfullscreen="true" title="Adobe Flash Player">            </div>
			 </div>
			 <!--/pvideo_box_in--->
		  </div>
		  <!--/pvideo_box-->
	   </div>
	   <!--/poptin_content-->
	   <div class="poptin_content whychoose_sec <?php echo $sh_status; ?> poptin_registration">
		  <h2>Here's What Poptin Can Do For You</h2>
		  <div class="tinyborder"></div>
		  <div class="pcontent_in">
			 <div class="whychoose_list">
				<ul>
				   <li>
					  <div class="box boxEnv">
						 <div class="boxIcon"><img src="<?php echo $module_img_dir;?>envelope.png" alt="" /></div>
						 <h4>Get more email subscribers</h4>
					  </div>
				   </li>
				   <li>
					  <div class="box boxLeads">
						 <div class="boxIcon"><img src="<?php echo $module_img_dir;?>fanel.png" alt="" /></div>
						 <h4>Get more leads and sales</h4>
					  </div>
				   </li>
				   <li>
					  <div class="box boxCart">
						 <div class="boxIcon"><img src="<?php echo $module_img_dir;?>wheel.png" alt="" /></div>
						 <h4>Reduce shopping cart abandonment</h4>
					  </div>
				   </li>
				   <li>
					  <div class="box boxHeart">
						 <div class="boxIcon"><img src="<?php echo $module_img_dir;?>heart.png" alt="" /></div>
						 <h4>Increase visitors' engagement</h4>
					  </div>
				   </li>
				</ul>
			 </div>
			 <!--/whychoose_list-->    
		  </div>
		  <!--/pcontent_in-->            	
	   </div>
	   <!--/poptin_content-->
	   <div class="poptin_content digital_marketers <?php echo $sh_status; ?> poptin_registration">
		  <h2>Digital Marketers ♥ Poptin</h2>
		  <div class="tinyborder"></div>
		  <div class="pcontent_in">
			 <div class="cfedbak_list">
				<ul>
				   <li>
					  <div class="box client1">
						 <div class="box_head">
							<img src="<?php echo $module_img_dir;?>profile1.png" alt=""  />
						 </div>
						 <!--head-->
						 <div class="clientboxtext">
							<h4>Michael Kamleitner</h4>
							<h6>CEO, Walls.io</h6>
							<p>Getting started with poptin was a breeze – we've implemented the widget and connected it to our newsletter within minutes. Our conversion rate skyrocketed! </p>
						 </div>
					  </div>
				   </li>
				   <li>
					  <div class="box client2">
						 <div class="box_head">
							<img src="<?php echo $module_img_dir;?>profile2.png" alt=""  />
						 </div>
						 <!--head-->
						 <div class="clientboxtext">
							<h4>Deepak Shukla</h4>
							<h6>CEO, Purr Traffic</h6>
							<p>Been v.impressed with Poptin and the team behind it so far. Great responses times from support. The roadmap looks great. I highly recommend.  </p>
						 </div>
					  </div>
				   </li>
				   <li>
					  <div class="box client3">
						 <div class="box_head">
							<img src="<?php echo $module_img_dir;?>profile3.png" alt=""  />
						 </div>
						 <!--head-->
						 <div class="clientboxtext">
							<h4>Michael Voiskoun</h4>
							<h6>Marketing manager, Engie</h6>
							<p>It's super easy to use, doesn't require any prior coding skill. The team at Poptin is really helpful, providing great support, and adding always more features!  </p>
						 </div>
					  </div>
				   </li>
				</ul>
			 </div>
			 <!--/whychoose_list-->    
		  </div>
		  <!--/pcontent_in-->            	
	   </div>
	   <!--/poptin_content-->
	    <div class="poptin_content clients_feedback">
		  <h2>Let us know what you think <img class="emoji" src="<?php echo $module_img_dir;?>1f642.svg" alt=""  /></h2>
		  <div class="tinyborder"></div>
		  <div class="reviewbox">
			 <div class="reviewtitle">If Poptin already helped you to grow your business, please click on the button below and leave a positive review <img class="emoji" src="<?php echo $module_img_dir;?>1f642.svg" alt=""  /></div>
			 <div class="reviewstars"><img src="<?php echo $module_img_dir;?>stars.png" alt=""  /></div>
			 <div class="reviewlink"><a href="https://www.opencart.com/index.php?route=marketplace/extension/info&extension_id=36155" target="_blank">Write a Review</a></div>
		  </div>
		  <!--/reviewbox-->            	
	   </div>
	   <!--/poptin_content-->
	   <div class="poptin_footer">
		  <div class="poptin_footer_img">
			 <img class="normal_img parrot" src="<?php echo $module_img_dir;?>parrot.png" alt=""  />
			 <img class="hover_img parrot" src="<?php echo $module_img_dir;?>parrot.gif" alt=""  />
		  </div>
		  <h6>Visit us at <a href="https://www.poptin.com/?utm_source=opencart3" target="_blank">poptin.com</a></h6>
	   </div>
	   <div class="modal fade whereis_myid" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		  <div class="modal-dialog modal-lg" role="document">
			 <div class="modal-content ">
				<h4>Where is my user ID?</h4>
				<div class="myid_list">
				   <div class="row">
					  <div class="col-sm-4">
						 <div class="id_box">
							<div class="id_box_img"><img src="<?php echo $module_img_dir;?>where-is-my-id-01.png" alt=""  /></div>
							<p><strong>1.</strong> Go to your dashboard, in the top bar click on "Settings"</p>
						 </div>
						 <!--/id_box-->
					  </div>
					  <!--/col-4-->
					  <div class="col-sm-4">
						 <div class="id_box">
							<div class="id_box_img"><img src="<?php echo $module_img_dir;?>where-is-my-id-02.png" alt=""  /></div>
							<p><strong>2.</strong> Click on Profile </p>
						 </div>
						 <!--/id_box-->
					  </div>
					  <!--/col-4-->
					  <div class="col-sm-4">
						 <div class="id_box">
							<div class="id_box_img"><img src="<?php echo $module_img_dir;?>where-is-my-id-03.png" alt=""  /></div>
							<p><strong>3.</strong> Copy your user ID </p>
						 </div>
						 <!--/id_box-->
					  </div>
					  <!--/col-4-->
				   </div>
				</div>
				<!--/myid_list-->
				<div class="popup_down">
				   <div class="poptup_button"><a href="#." data-dismiss="modal" aria-label="Close">Close</a></div>
				</div>
			 </div>
		  </div>
	   </div>
	   <!--/whereis_myid-->
	    <div class="modal fade lookfamiliar" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		  <div class="modal-dialog modal-sm" role="document">
			 <div class="modal-content">
				<img class="poptin-parrot-makingsure-image" src="<?php echo $module_img_dir;?>parrot-familiar.png">
				<h4>You look familiar</h4>
				<p>You already have a Poptin account with this email address. </p>
				<div class="popup_down">
				   <div class="poptup_button"><a href="https://dev.popt.in/overview" target="_blank">Login</a></div>
				   <a href="#." data-dismiss="modal" aria-label="Close">I'll stay</a>
				</div>
			 </div>
		  </div>
	   </div>
	   <!--/lookfamiliar-->
	   <div class="modal fade oopsiewrongemailid" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		  <div class="modal-dialog modal-sm" role="document">
			 <div class="modal-content">
				<img class="poptin-parrot-makingsure-image" src="<?php echo $module_img_dir;?>parrot-oopsie.png">
				<h4>Oopsie... wrong Email</h4>
				<p>Please enter a valid Email Address.  </p>
				<div class="popup_down">
				   <div class="poptup_button"><a href="#." data-dismiss="modal" aria-label="Close">Try again</a></div>
				</div>
			 </div>
		  </div>
	   </div>
	   <!--/oopsiewrongid-->
	   <div class="modal fade oopsiewrongid" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		  <div class="modal-dialog modal-sm" role="document">
			 <div class="modal-content">
				<img class="poptin-parrot-makingsure-image" src="<?php echo $module_img_dir;?>parrot-oopsie.png">
				<h4>Oopsie... wrong ID</h4>
				<p><a href="#" class="poptin-lightbox-atag where-is-my-id-inside-lb wheremyid" data-toggle="modal" data-target=".whereis_myid">Where is my user ID?</a></p>
				<div class="popup_down">
				   <div class="poptup_button"><a href="#." data-dismiss="modal" aria-label="Close">Try again</a></div>
				</div>
			 </div>
		  </div>
	   </div>
	   <!--/oopsiewrongid-->
	   <div class="modal fade deactivate_poptin_popup" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		  <div class="modal-dialog modal-sm" role="document">
			 <div class="modal-content">
				<img class="poptin-parrot-makingsure-image" src="<?php echo $module_img_dir;?>parrot-making-sure.png">
				<h4>Just making sure</h4>
				<p>Are you sure you want to <br /> remove Poptin? </p>
				<div class="popup_down">
				   <div class="poptup_button"><a href="#." class="pplogout1" >Yes</a></div>
				   <a href="#." data-dismiss="modal" aria-label="Close">I'll stay</a>
				</div>
			 </div>
		  </div>
	   </div>
	   <!--/deactivate_poptin_popup-->
	   <div class="modal fade byebyeModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		  <div class="modal-dialog modal-sm" role="document">
			 <div class="modal-content">
				<img class="poptin-parrot-byebye-image" src="<?php echo $module_img_dir;?>parrot-bye-bye.png">
				<h4>Bye Bye</h4>
				<p>Poptin snippet has been <br /> removed. See you around. </p>
				<div class="popup_down">
				   <div class="poptup_button"><a href="#." data-dismiss="modal" aria-label="Close">Close</a></div>
				</div>
			 </div>
		  </div>
	   </div>
	   <!--/byebyeModal-->
	</div>
</div>
<script>
   $(document).ready(function () {
   
   	$(".wheremyid").click(function(){
   		$('.oopsiewrongid').modal('hide');
   	
   	});
   	function show_loader() {
   		$(".poptin-overlay").attr('style');
   		$(".poptin-overlay").css("display", "block");
   		$(".poptin-overlay").fadeIn(500);
   	}
   
   	function hide_loader() {
   		$(".poptin-overlay").attr('style');
   		$(".poptin-overlay").fadeOut(500);
   		$(".poptin-overlay").css("display", "none");
   	}
   
   	function isEmail(email) {
   		var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
   		return regex.test(email);
   	}
   
   	var request_url = "<?php echo $module_ajax ; ?>";
   	
       
       $("#popin_id_register").submit(function (event) {
   		show_loader();
   		event.preventDefault();
   		
   		var pop_up_id = $("#pop_up_id").val();                if(/^[a-zA-Z0-9- ]*$/.test(pop_up_id) == false) {            hide_loader();            $('.oopsiewrongid').modal('show');            return false;        }                if(pop_up_id.length>10)
   		{
   			$.ajax({
   				type: 'POST',
   				url: request_url,
   				dataType: "json",
   				data: {
   					type: 'save_poptin',
   					pop_up_id: pop_up_id
   				},
   				cache: false,
   				success: function (response) {
   					hide_loader();
   					console.log(response);
   					if (response.status == '1') {
   						$(".poptin_logged").removeClass('hide');
   						$(".poptin_registration").removeClass('show');
   						$(".poptin_registration").addClass('hide');
   						
   						$(".with_token").hide();
   						$(".without_token").show();
   						
   					} else {
   						var error_s = "Someting Goes Wrong";
   						swal("Error", error_s, "error");
   						
   					}
   
   				},
   				error: function (ts) {
   					hide_loader();
   					swal("Error", ts.responseText, "error");
   				}
   			});
   			
   		
   		
   		}else{
   			hide_loader();
   			$('.oopsiewrongid').modal('show');
   		}
   	});
   	
   	$("#popin_signup").submit(function (event) {
   		event.preventDefault();
   		var popin_email = $("#popin_email").val();
   		if (!isEmail(popin_email)) {
   			event.preventDefault();
   			$(".oopsiewrongemailid").modal('show');
   			return false;
   		} else {
   			show_loader();
   			$.ajax({
   				type: 'POST',
   				url: request_url,
   				dataType: "json",
   				data: {
   					type: 'register',
   					email: popin_email
   				},
   				cache: false,
   				success: function (response) {
   					hide_loader();
   					console.log(response);
   					if (response.status == '1') {
   						$(".poptin_logged").removeClass('hide');
   						$(".poptin_registration").removeClass('show');
   						$(".poptin_registration").addClass('hide');
						$("#popin_email").val('');
   						
   						$(".with_token").show();
   						$(".without_token").hide();
                           
                           var new_url=$(".with_token").attr('href')+"&utm_source=opencart3";
                           $(".with_token").attr('href',new_url);
                           
                           
   						//location.reload();
   					} else if (response.status == '0') {
   						//alert(response.message);
   						$('.lookfamiliar').modal('show');
   					} else {
   						var error_s = "Someting Goes Wrong";
   						swal("Error", error_s, "error");
   					}
   
   				},
   				error: function (ts) {
   					hide_loader();
   					//alert(ts.responseText);
   					swal("Error", ts.responseText, "error");
   				}
   			});
   		}
   	});
   
   	$(".pplogout1").click(function (event) {
         $('.deactivate_poptin_popup').modal('hide');   
		 show_loader();
   		event.preventDefault();
   		$.ajax({
   			type: 'POST',
   			url: request_url,
   			dataType: "json",
   			data: {
   				type: 'remove'
   			},
   			cache: false,
   			success: function (response) {
   				if (response.status == '1') {
   					$("#pop_up_id").val('');
   
   					$(".poptin_registration").removeClass('hide');
   					$(".poptin_registration").addClass('show');
					hide_loader();
   					$(".poptin_logged").removeClass('show');
   					$(".poptin_logged").addClass('hide');
   					$('.byebyeModal').modal('show');
   				}
   			},
   			error: function (ts) {
   				swal("Error", ts.responseText, "error");
   				//alert(ts.responseText);
   			}
   		});
   
   	});
   
   	$("#login_form").click(function (event) {
   		event.preventDefault();
   		$(".login_form").attr("style", " ");
   		$(".register_form").attr("style", " ");
   
   		$(".login_form").css("display", "block");
   		$(".register_form").css("display", "none");
   	});
   
   	$("#register_form").click(function (event) {
   		event.preventDefault();
   		$(".register_form").attr("style", " ");
   		$(".login_form").attr("style", " ");
   
   		$(".register_form").css("display", "block");
   		$(".login_form").css("display", "none");
   	});
       
     
   
   });
   
   
</script>
<?php echo $footer; ?>