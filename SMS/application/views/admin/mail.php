<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('inbox');?>
                    	</a></li>
                        <li>
            	<a href="#out" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('outbox');?>
                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('compose');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
            <!----INBOX TABLE LISTING STARTS--->
            <div class="tab-pane box <?php if(!isset($edit_data))echo 'active';?>" id="list">
                <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive">
                	<thead>
                		<tr>
                    		<th><div>#</div></th>
                    		<th><div><?php echo get_phrase('from');?></div></th>
                    		<th><div><?php echo get_phrase('title');?></div></th>
                    		<th><div><?php echo get_phrase('time');?></div></th>
                    		<th><div><?php echo get_phrase('options');?></div></th>
						</tr>
					</thead>
                    <tbody>
                    	<?php $count = 1;foreach($to_emails as $row):?>
                        <tr>
                                                         <td><?php echo $count++;?></td>
							<td><?php echo $row['from_user'];?></td>
							<td><?php echo $row['title'];?></td>
							<td><?php //echo $row['description'];?></td>
							<td><?php //echo $row['route_fare'];?></td>
							<td align="center">
                            	<a data-toggle="modal" href="#modal-form" onclick="modal('mail_view',<?php echo $row['id'];?>)" class="btn btn-gray btn-small">
                                		<i class="icon-wrench"></i> <?php echo get_phrase('view');?>
                                </a>
                            	<a data-toggle="modal" href="#modal-delete" onclick="modal_delete('<?php echo base_url();?>index.php?admin/mail/delete/<?php echo $row['id'];?>')" class="btn btn-red btn-small">
                                		<i class="icon-trash"></i> <?php echo get_phrase('delete');?>
                                </a>
        					</td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
			</div>
            <!----INBOX TABLE LISTING ENDS--->
            <!--OUTBOX TABLE LISTING STARTS-->
            <div class="tab-pane box" id="out" style="padding: 5px">
                <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive">
                	<thead>
                		<tr>
                                    
                    		<th><div>#</div></th>
                    		<th><div><?php echo get_phrase('to');?></div></th>
                    		<th><div><?php echo get_phrase('title');?></div></th>
                    		<th><div><?php echo get_phrase('sent_time');?></div></th>
                    		<th><div><?php echo get_phrase('options');?></div></th>
						</tr>
					</thead>
                    <tbody>
                    	<?php $count = 1;foreach($from_emails as $row):?>
                        <tr>
                                                        <td><?php echo $count++;?></td>
                                                        
                                                        <td><?php echo $row['to_user'];?></td>
							<td><?php echo $row['title'];?></td>
							<td><?php //echo $row[''];?></td>
							<td><?php //echo $row['route_fare'];?></td>
							<td align="center">
                            	<a data-toggle="modal" href="#modal-form" onclick="modal('mail_view',<?php echo $row['id'];?>)" class="btn btn-gray btn-small">
                                		<i class="icon-wrench"></i> <?php echo get_phrase('view');?>
                                </a>
                            	<a data-toggle="modal" href="#modal-delete" onclick="modal_delete('<?php echo base_url();?>index.php?admin/mail/delete/<?php echo $row['id'];?>')" class="btn btn-red btn-small">
                                		<i class="icon-trash"></i> <?php echo get_phrase('delete');?>
                                </a>
                                                        </td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
		
            </div>
            <!--OUTBOX TABLE LISTING ENDS-->
            
            
			<!----CREATION FORM STARTS---->
			<div class="tab-pane box" id="add" style="padding: 5px">
                <div class="box-content">
                	<?php echo form_open('admin/mail/create' , array('class' => 'form-horizontal validatable','target'=>'_top'));?>
                        <div class="padded">
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('to');?></label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="to_user"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('title');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="title"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('message');?></label>
                                <div class="controls">
                                    <textarea rows="10" cols="50" class="" name="message"></textarea>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('Send');?></button>
                        </div>
                    </form>                
                </div>                
			</div>
			<!----CREATION FORM ENDS--->
            
		</div>
	</div>
</div>