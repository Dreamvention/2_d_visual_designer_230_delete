<div class="form-group">
    <label class="control-label"><?php echo $entry_title; ?></label>
    <div class="fg-setting">
        <input type="text" name="title" class="form-control" value="<?php echo $setting['title']; ?>">
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_image; ?></label>
    <div class="fg-setting">
        <a href="" id="thumb-vd-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title=""/></a>
          <input type="hidden" name="image" value="<?php echo $setting['image']; ?>" id="input-vd-image" />
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_alt; ?></label>
    <div class="fg-setting">
        <input type="text" name="image_alt" class="form-control" value="<?php echo $setting['image_alt']; ?>">
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_title; ?></label>
    <div class="fg-setting">
        <input type="text" name="image_title" class="form-control" value="<?php echo $setting['image_title']; ?>">
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_size; ?></label>
    <div class="fg-setting">
        <select class="form-control" name="size">
            <?php foreach ($sizes as $key => $value) { ?>
                <?php if($key == $setting['size']) {?>
                    <option value="<?php echo $key; ?>" selected="selected"><?php echo $value; ?></option>
                <?php } else { ?>
                    <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
</div>
<div id="size" style="display:none;">
    <div class="form-group">
        <label class="control-label"><?php echo $entry_width; ?></label>
        <div class="fg-setting">
            <input type="text" name="width" class="form-control pixels" value="<?php echo $setting['width']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label"><?php echo $entry_height; ?></label>
        <div class="fg-setting">
            <input type="text" name="height" class="form-control pixels" value="<?php echo $setting['height']; ?>">
        </div>
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_style; ?></label>
    <div class="fg-setting">
        <select class="form-control" name="style">
            <?php foreach($styles as $key => $value){ ?>
                <?php if($setting['style'] == $key){ ?>
                    <option value="<?php echo $key; ?>" selected="selected"><?php echo $value; ?></option>
                <?php } else { ?>
                    <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_onclick; ?></label>
    <div class="fg-setting">
        <select class="form-control" name="onclick">
            <?php foreach ($actions as $key => $value) { ?>
                <?php if($key == $setting['onclick']) {?>
                    <option value="<?php echo $key; ?>" selected="selected"><?php echo $value; ?></option>
                <?php } else { ?>
                    <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
</div>
<div id="link" style="display:none;">
    <div class="form-group">
        <label class="control-label"><?php echo $entry_link; ?></label>
        <div class="fg-setting">
            <input type="text" name="link" class="form-control" value="<?php echo $setting['link']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label"><?php echo $entry_link_target; ?></label>
        <div class="fg-setting">
            <select class="form-control" name="link_target">
                    <?php if('new' == $setting['link_target']) {?>
                        <option value="new" selected="selected"><?php echo $text_new_window; ?></option>
                        <option value="current"><?php echo $text_current_window; ?></option>
                    <?php } else { ?>
                        <option value="new"><?php echo $text_new_window; ?></option>
                        <option value="current" selected="selected"><?php echo $text_current_window; ?></option>
                    <?php } ?>
            </select>
        </div>
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_align; ?></label>
    <div class="fg-setting">
        <select class="form-control" name="align">
            <?php foreach($aligns as $key => $value){ ?>
                <?php if($setting['align'] == $key){ ?>
                    <option value="<?php echo $key; ?>" selected="selected"><?php echo $value; ?></option>
                <?php } else { ?>
                    <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_parallax; ?></label>
    <div class="fg-setting">
        <input type="hidden" name="parallax" value="0" />
        <input type="checkbox" name="parallax" class="switcher" data-label-text="<?php echo $text_enabled; ?>" <?php echo ($setting['parallax']) ? 'checked="checked"':'';?> value="1" />
    </div>
</div>
<div id="parallax" style="<?php echo $setting['parallax']?'':'display:none;'; ?>">
    <div class="form-group">
        <label class="control-label"><?php echo $entry_parallax_height; ?></label>
        <div class="fg-setting">
            <input type="text" name="parallax_height" class="form-control pixels" value="<?php echo $setting['parallax_height']; ?>" />
        </div>
    </div>
</div>
<div class="form-group">
    <label class="control-label"><?php echo $entry_animate; ?></label>
    <div class="fg-setting">
        <select class="form-control" name="animate">
            <?php foreach($animates as $key => $value){ ?>
                <?php if($setting['animate'] == $key){ ?>
                    <option value="<?php echo $key; ?>" selected="selected"><?php echo $value; ?></option>
                <?php } else { ?>
                    <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
</div>
<script>
$(".switcher[type='checkbox']").bootstrapSwitch({
    'onColor': 'success',
    'onText': '<?php echo $text_yes; ?>',
    'offText': '<?php echo $text_no; ?>',
});
$(".switcher[type='checkbox'][name=parallax]").on('switchChange.bootstrapSwitch', function(event, state) {
    if(state){
        $('#parallax').removeAttr('style');
    }
    else{
        $('#parallax').attr('style','display:none;');
        
    }
});
$(document).on('change','select[name=size]', function(){
    if($(this).val() == 'custom'){
        $('#size').removeAttr('style');
    }
    else{
        $('#size').attr('style','display:none;');
    }
});
$(document).on('change','select[name=onclick]', function(){
    if($(this).val() == 'link'){
        $('#link').removeAttr('style');
    }
    else{
        $('#link').attr('style','display:none;');
    }
});
$('select[name=size]').trigger('change');
$('select[name=onclick]').trigger('change');
</script>