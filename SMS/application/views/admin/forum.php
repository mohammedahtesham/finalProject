<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('forum');?>
                    	</a></li>
                        <li>
            	<a href="#category" data-toggle="tab"><i class="icon-plus"></i> 
					<?php echo get_phrase('create categories');?>
                    	</a></li>
			<li>
            	<a href="#add_topic" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('create topics');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
            <!----FORUM VIEW STARTS--->
            <div class="tab-pane box <?php if(!isset($edit_data))echo 'active';?>" id="list">
                 <div align="center" ><?php echo get_phrase('CATEGORIES'); ?></div>
                <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive">
                    <thead>
                        
                         <tr>
                    		<th><div><?php echo get_phrase('id');?></div></th>
                    		<th><div><?php echo get_phrase('title');?></div></th>
                    		<th><div><?php echo get_phrase('description');?></div></th>
                                <th><div><?php echo get_phrase('options');?></div></th>
                    		
                        </tr>
                		
                    </thead>
                    <tbody>
                        
                        <?php $count = 1;foreach($categories as $row):?>
                        <tr>
                                                        <td><?php echo $row['cat_id'];?></td>
                                                       <td> <?php echo $row['cat_name'];?></a></td>
							<td><?php echo $row['cat_description'];?></td>
							
							<td align="center">
                                        <?php echo form_open('admin/forum/view_topic');?>
                                	<input type="hidden" name="cat_id" 		value="<?php echo $row['cat_id'];?>" />
                                	<input type="submit" class="btn btn-gray" 	value="View" />
                                </form>
                                                        </td>
                        </tr>
                        <?php endforeach;?>
                         
                    </tbody>
                </table>
			</div>
            <!----FORUM VIEW  ENDS--->
          
            <!--FORUM CATEGORY START-->
            <div class="tab-pane box <?php //if(!isset($edit_data))echo 'active';?>" id="category" style="padding: 5px">
               <a href="#add_category" data-toggle="tab" color="blue">Add</a><br/><br/>
               <a href="#delete_category" data-toggle="tab" color="red">Delete</a>
            </div>
            <!--FORUM CATEGORY ENDS-->
            <!--DELETE FORUM CATEGORY START-->
            <div class="tab-pane box" id="delete_category" style="padding: 5px">
                <a href="#add_topic" data-toggle="tab"> <?php echo 'delete this category';?></a>
            </div>
            <!--DELETE FORUM CATEGORY ENDS-->
            <!--CREATE FORUM CATEGORIES STARTS-->
             <div class="tab-pane box" id="add_category" style="padding: 5px">
                <div class="box-content">
                	<?php echo form_open('admin/forum/create_categories' , array('class' => 'form-horizontal validatable','target'=>'_top'));?>
                        <div class="padded">
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Category Name');?></label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="cat_name"/>
                                </div>
                            </div>
                           
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Category Discription');?></label>
                                <div class="controls">
                                    <textarea rows="10" cols="50" class="" name="cat_description"></textarea>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('Add Category');?></button>
                        </div>
                    </form>                
                </div>                
			</div>
            <!--CREATE FORUMS CATEGORIES ENDS-->
           
            
			<!----CREATE FORUM TOPICS STARTS---->
			<div class="tab-pane box" id="add_topic" style="padding: 5px">
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