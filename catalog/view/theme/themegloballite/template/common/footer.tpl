
<?php 
if($this->registry->has('theme_options') == true) { 
	$theme_options = $this->registry->get('theme_options');
	$config = $this->registry->get('config');
	require_once( DIR_TEMPLATE.$config->get('config_template')."/lib/module.php" );
	$modules = new Modules($this->registry);
	
	$language_id = $config->get( 'config_language_id' );
	$customfooter = $theme_options->get( 'customfooter' );
	if(!isset($customfooter[$language_id])) {
		$customfooter[$language_id] = array(
			'facebook_status' => 0,
			'contact_status' => 0
		);
	}


			$grids = 3; $test = 0;  
			if($customfooter[$language_id]['contact_status'] == '1') { $test++; } 
			if($test == 1) { $grids = 25; }
			if($test == 2) { $grids = 2; }

	
	?>

	
	
	<!-- FOOTER
		================================================== -->
	<div class="footer full-width">
				<div class="row footer_social" style="background-color:#49607b">
						<div class="footer_social_left footer_sections">
								<h3>Need Help </h3>
								<div class="footer_section_content footer_section_content_left">
									<div class="footer_section_email">support@givebunch.com</div>
									<div class="footer_section_number">+91 8287919493</div>
								</div>
						</div>
						<div class="footer_social_righ footer_sections">
								<h3>Share Your Bunch </h3>
								<div class="footer_section_content footer_section_content_right">
										<div class="footer_section_icones">
											<span><a href="https://www.facebook.com/givebunch/?fref=ts"><i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i> </a></span>
											<span><a href="https://www.instagram.com/givebunch/"> <i class="fa fa-instagram fa-2x" aria-hidden="true"></i> </a></span>
											<span><a href="https://plus.google.com/b/113572594211744784951/113572594211744784951/posts?gmbpt=true&hl=en-GB"> <i class="fa fa-google-plus-square fa-2x" aria-hidden="true"></i> </a></span>
										</div>
								</div>
						</div>
				</div>
				<div class="container">
					<?php 
					$footer_top = $modules->getModules('footer_top');
					if( count($footer_top) ) { 
						foreach ($footer_top as $module) {
							echo $module;
						}
					} ?>
					
					<div class="row">
					
						<?php if($customfooter[$language_id]['contact_status'] == '1') { ?>
						<!-- Contact -->
						<div class="col-sm-<?php echo $grids; ?> col-xs-6 footer-column" style="display:none;">
							<?php if($customfooter[$language_id]['contact_title'] != '') { ?>
							<h4><?php echo $customfooter[$language_id]['contact_title']; ?></h4>
							<?php } ?>
							<ul class="contact-us clearfix">
								<?php if($customfooter[$language_id]['contact_phone'] != '' || $customfooter[$language_id]['contact_phone2'] != '') { ?>
								<!-- Phone -->
								<li>
									<i class="fa fa-phone" style="font-size: 17px;"></i>
									<p>
										<?php if($customfooter[$language_id]['contact_phone'] != '') { ?>
											<?php echo $customfooter[$language_id]['contact_phone']; ?><br>
										<?php } ?>
										
									</p>
									
									
									<?php if($customfooter[$language_id]['contact_phone2'] != '') { ?>
											<i class="fa fa-mobile"></i>
											<p><?php echo $customfooter[$language_id]['contact_phone2']; ?></p>
										<?php } ?>
								</li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_email'] != '') { ?>
								<!-- Email -->
								<li>
									<i class="fa fa-envelope" style="font-size: 14px;"></i>
									<p>
										<?php if($customfooter[$language_id]['contact_email'] != '') { ?>
											<span><?php echo $customfooter[$language_id]['contact_email']; ?></span><br>
										<?php } ?>
									</p>
								</li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_skype'] != '') { ?>
								<!-- Skype -->
								<li>
									<i class="fa fa-skype" style="font-size: 16px;"></i>
									<p>
										<?php if($customfooter[$language_id]['contact_skype'] != '') { ?>
											<?php echo $customfooter[$language_id]['contact_skype']; ?><br>
										<?php } ?>
									</p>
								</li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_location'] != '') { ?>
								<!-- Location -->
								<li>
									<i class="fa fa-home" style="font-size: 16px;"></i>
									<p>
										<?php if($customfooter[$language_id]['contact_location'] != '') { ?>
											<?php echo $customfooter[$language_id]['contact_location']; ?><br>
										<?php } ?>
									</p>
								</li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_hours'] != '') { ?>
								<!-- Location -->
								<li>
									<i class="fa fa-clock-o" style="font-size: 16px;"></i>
									<p>
										<?php if($customfooter[$language_id]['contact_hours'] != '') { ?>
											<?php echo $customfooter[$language_id]['contact_hours']; ?><br>
										<?php } ?>
									</p>
								</li>
								<?php } ?>
							</ul>
						</div>
						<?php } ?>
						
						<!-- Information -->
						<div class="col-sm-4 col-xs-4 footer-column">
							<h4><?php echo $text_information; ?></h4>
							
							<ul>
								<?php foreach ($informations as $information) { ?>
								<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
								<?php } ?>
										<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
						
							</ul>
						</div>
						
						<!-- Customer Service -->
						<!-- <div class="col-sm-<?php echo $grids; ?> col-xs-4 footer-column">
							<h4><?php echo $text_service; ?></h4>
							
							<ul>
								<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
								<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li> 
							</ul> 
						</div> -->
						
						<!-- Extras -->
						<!-- <div class="col-sm-4 col-xs-4 footer-column">
							<h4><?php echo $text_extra; ?></h4>
							
							<ul>
								<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
								<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
								<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
								<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
							</ul>
						</div>  -->
						
						<!-- My Account -->
						<div class="col-sm-4 col-xs-4 footer-column hidden-xs">
							<h4><?php echo $text_account; ?></h4>
							
							<ul>
								<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
								<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
								<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
								<!-- <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li> -->
							</ul>
						</div>
					
						<div class="col-sm-4 col-xs-4 footer-column">
							<h4>Subscribe</h4>
							
							<ul>
								<li><input type="text" name="email" placeholder="Your email address"> </li>
							</ul>
						</div>
				
					</div>
					
				</div>
	</div>
	
	<!-- COPYRIGHT
		================================================== -->
			<div class="copyright">
				
						<div class="container pattern">
						 BUNCH © 2016	
						</div>
						
				
			</div>
	
							
					
					
					
	<script type="text/javascript" src="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/js/megamenu.js"></script>
	<script type="text/javascript">
		$("#how_it_works_menu_link").click(function(){
        		$('html, body').animate({ scrollTop: $('#how-it-works').offset().top }, 'slow');

 		});
 		$("#where_we_deliver_menu_link").click(function(){
        		$('html, body').animate({ scrollTop: $('#where-we-deliver').offset().top }, 'slow');

 		});
	</script>
</div>

<a href="#" class="scrollup"><i class="fa fa-caret-up"></i>Top</a>
</div>
<?php } ?>
</body>
</html>
