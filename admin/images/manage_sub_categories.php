<?php
require('top.inc.php');
$categories='';
$sub_categories='';
$msg = '';
if(isset($_GET['id']) && $_GET['id']!=''){
   $id = get_safe_value($con,$_GET['id']);
   $res = mysqli_query($con, "SELECT * from sub_categories where id='$id'");
   $check = mysqli_num_rows($res);
   if($check>0){
      $row = mysqli_fetch_assoc($res);
      $sub_categories = $row['sub_categories'];
      $categories = $row['categories_id'];
   }else{
      header('location:sub_categories.php');
      die();
   }
   
}
if(isset($_POST['submit'])){
   $categories = get_safe_value($con,$_POST['categories_id']);
   $sub_categories = get_safe_value($con,$_POST['sub_categories']);

 
   $res = mysqli_query($con, "SELECT * from sub_categories where categories='$categories' and sub_categories='$sub_categories'");
   $check = mysqli_num_rows($res);
   if($check>0){
      if(isset($_GET['id']) && $_GET['id']!=''){
         $getData = mysqli_fetch_assoc($res);
         if($id==$getData['id']){

         }else{
            $msg = "sub_categories already exist";
         }
      }else{
      $msg = "sub_categories already exist";
      }

   }else{
  

   if($msg==''){
      if(isset($_GET['id']) && $_GET['id']!=''){
         mysqli_query($con,"update sub_categories SET categories_id='$categories',sub_categories='$sub_categories' where id='$id'");
      }else{
      mysqli_query($con,"insert into sub_categories(categories_id,sub_categories,  status) values('$categories','$sub_categories','1')");
      }
      header('location:sub_categories.php');
      die();
   }
       
   }
}

?>

<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Sub Categories</strong><small> Form</small></div>
                        <form method="POST">
                           <div class="card-body card-block">
                           <div class="form-group"><label for="categories" class=" form-control-label">Categories</label>
                           <select name="categories_id" required class="form-control">
                           <option value="">Select Categories</option>
                           <?php
                           $res = mysqli_query($con,"select * from categories where status='1'");
                           while($row=mysqli_fetch_assoc($res)){
                              if($row['id']==$categories){
                              echo "<option value=".$row['id']." selected>".$row['categories']."</option>";
                           }else{
                              echo "<option value=".$row['id'].">".$row['categories']."</option>";
                           }
                           }
                           ?>
                           </select>
                           </div>
                           <div class="form-group">
									<label for="categories" class=" form-control-label">Sub Categories</label>
									<input type="text" name="sub_categories" placeholder="Enter Sub Categories name" 
                           class="form-control" required value="<?php echo $sub_categories?>">
								</div>
                           <button id="payment-button" type="submit" name='submit' class="btn btn-lg btn-info btn-block">
                           <span id="payment-button-amount" name="submit">Submit</span>
                           </button>
                           <div class="field_error"><?php echo $msg?></div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="clearfix"></div>

<?php
require('footer.inc.php');
?>