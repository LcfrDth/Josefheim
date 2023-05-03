<div class= "footer">
         <div class="container">                                                        
            <div class="col-md-6 footer-grid footer-grid1">
                    <div class="Office Address">
                        <h4>Our Address</h4>
                       <ul class="bottom-icons">
                        <?php

$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                            <li><a class="home" href="#"><span> </span></a><?php  echo $row['PageDescription'];?></li>
                            <li><a class="mail" href="mailto:info@example.com"><span> </span><?php  echo $row['Email'];?></a></li>
                            <li><a class="mbl" href="#"><span> </span></a><?php  echo $row['MobileNumber'];?></li>   
                            <div class="clearfix"> </div><?php } ?>   
                        </ul>
                     </div>
                </div>
                
                <div class="col-md-6 footer-grid footer-grid3">
                    <div class=" Follow us here">
                    <h4> Follow us here</h4>
                        <ul class="bottom-icons two">
                            <li><a class="fbook" href="https://web.facebook.com/josefheimfoundation/?_rdc=1&_rdr"><span> </span></a>Facebook</li>
                               
                            <div class="clearfix"> </div>   
                        </ul>
                    </div>
                    <div class="copy-center">
                            <p>Josefheim Foundation @2023</p>
                        </div>      
                    </div>
                    <div class="clearfix"> </div>   
                </div>
            </div>