<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
	<p style="display:none;"><?php echo $text_shipping_method; ?></p>
	<?php foreach ($shipping_methods as $shipping_method) { ?>
		<p style="display:none;"><strong><?php echo $shipping_method['title']; ?></strong></p>
		<?php if (!$shipping_method['error']) { ?>
			<?php foreach ($shipping_method['quote'] as $quote) { ?>
				<div class="radio" style="display:none;">
				  <label>
				    <?php if ($quote['code'] == $code || !$code) { ?>
				    <?php $code = $quote['code']; ?>
				    <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" checked="checked" />
				    <?php } else { ?>
				    <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" />
				    <?php } ?>
				    <?php echo $quote['title']; ?> - <?php echo $quote['text']; ?></label>
				</div>
			<?php } ?>
		<?php } else { ?>
			<div class="warning"><?php echo $shipping_method['error']; ?></div>
		<?php } ?>
	<?php } ?>
<?php } ?>
<!-- <p><strong><?php echo $text_comments; ?></strong></p>
<p>
  <textarea name="comment" rows="8" class="form-control"><?php echo $comment; ?></textarea>
</p> -->
<p><strong><?php echo "Card Message"; ?></strong></p>
<p>
  <textarea name="instruction" rows="8" class="form-control"><?php echo $instruction; ?></textarea>
</p>
<div class="buttons">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" data-loading-text="<?php echo $text_loading; ?>" class="button" />
  </div>
</div>
