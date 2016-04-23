<?php
$sylb_info	=	$this->crud_model->get_syllabus($subject_id);
foreach($sylb_info as $row):?>

	<div style="background-color: #2A3542;text-align: left;color: #fff;font-size: 21px;font-weight: 100;padding-left:20px;margin-top:60px;">
    	<img src="<?php echo base_url();?>uploads/logo.png"  
        	style="max-height:60px; max-width:100px; vertical-align:text-bottom;"/>
				<?php echo $system_name;?>
    </div>
<style>
.idcard_text
{
	padding: 6px;
	font-weight: 100;
	font-size: 13px;
}
</style>
	<table width="100%" border="0" style="background-color:#fff; font-size:13px;">
      <tr>
        
        <td class="idcard_text" width="100" style="padding-top:16px;"><?php echo get_phrase('subject_name');?></td>
        <td class="idcard_text" style="padding-top:16px;"><?php echo $row['name'];?></td>
      </tr>
      <tr>
        <td class="idcard_text"><?php echo get_phrase('syllabus');?></td>
        <td class="idcard_text"><?php echo $row['syllabus'];?></td>
      </tr>
      
      <tr>
        <td colspan="3" style="background-color:#D9E6E9;font-size:10px; text-align:right;padding:8px;">&copy; 2013</td>
      </tr>
    </table>

<?php endforeach;?>