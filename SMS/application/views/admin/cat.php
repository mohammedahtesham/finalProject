<div class="box">
	<div class="box-header">  
<div class="tab-pane box <?php if(!isset($edit_data))echo 'active';?>" id="view_list">
                 <div align="center" ><?php echo get_phrase('TOPICS'); ?></div>
                <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive">
                    <thead>
                        
                         <tr>
                    		<th><div><?php echo get_phrase('id');?></div></th>
                    		<th><div><?php echo get_phrase('topic');?></div></th>
                    		<th><div><?php echo get_phrase('options');?></div></th>
                    		
                        </tr>
                		
                    </thead>
                    <tbody>
                        
                        <?php $count = 1;foreach($topics as $row):?>
                        <tr>
                                                        <td><?php echo $row['topic_id'];?></td>
                                                       <td><?php echo $row['topic_subject'];?>> <?php echo $row['cat_name'];?></a></td>
							<td><?php echo $row['topi'];?></td>
							
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
            </div>
</div>

                
             