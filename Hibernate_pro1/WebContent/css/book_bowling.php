<?php
require 'db.php';
include './drowndown_1hrs.php';
session_start();
?>





<?php

extract($_POST);
if(isset($_POST['id123']))
{
    
    $str='2';
            $id='1';
    $q="update slots set userid=:id,Status=1 ,time=time_to_sec(now())+60  where table_slot=:_slot_id";
  $stmt=$con->prepare($q);
   $stmt->bindParam(':id',$id);
            $stmt->bindParam(':_slot_id',$str);
            $stmt->execute();
    
    $_SESSION['color']='btn-danger';
    
    
    
//    $q="update slots set userid=:id,Status=1 where table_slot=:_slot_id";
//        $fetch="select * from slots";
//            
//            $str=1;
//            $id=2;
//           $stmt=$con->prepare($q);
//            $stmt->bindParam(':id',$id);
//            $stmt->bindParam(':_slot_id',$str);
//            if($stmt->execute())
//            {
//                echo 'Executed';
//                
//                 if($_SESSION['color']=='btn-primary')
//    {
//        $_SESSION['color']='btn-danger';
//    }
//                
//            
//            else
//            {
//                echo 'no executed';
//            }
//            }
//            $row=$stmt->fetchAll(PDO::FETCH_OBJ);
//            
//            $stmt->bindParam();
            
           
//    if($_SESSION['color']=='btn-primary')
//    {
//        $_SESSION['color']='btn-danger';
//    }
//    else
//    {
//    $_SESSION['color']='btn-danger';
//    }
//    echo 'b1 is here';
//    
//    foreach($row as $r)
//    {
//      echo  $r->table_slot;
//    }
//}


}




?>


<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Bowling</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <style>
            
            #i{
                
                background-color:black;
                background-size: cover;
            }
        </style>

                 <script>

               
                 $(document).ready(function() { 
                $('#b1').mouseover(function() { 
                    $('#b1').css("background-color", "aqua"); 
                }); 
                
                 $('#b1').mouseout(function(){  
        $('#b1').css("background-color", "blue");  
      }); 
          
              
               $('#b2').mouseover(function() { 
                    $('#b2').css("background-color", "aqua"); 
                }); 
                
                 $('#b2').mouseout(function(){  
        $('#b2').css("background-color", "blue");  
      }); 
      
      
       $('#b3').mouseover(function() { 
                    $('#b3').css("background-color", "aqua"); 
                }); 
                
                 $('#b3').mouseout(function(){  
        $('#b3').css("background-color", "blue");  
      }); 
      
       $('#b4').mouseover(function() { 
                    $('#b4').css("background-color", "aqua"); 
                }); 
                
                 $('#b4').mouseout(function(){  
        $('#b4').css("background-color", "blue");  
      }); 
      
      
       $('#b5').mouseover(function() { 
                    $('#b5').css("background-color", "aqua"); 
                }); 
                
                 $('#b5').mouseout(function(){  
        $('#b5').css("background-color", "blue");  
      }); 
      
      
       $('#b6').mouseover(function() { 
                    $('#b6').css("background-color", "aqua"); 
                }); 
                
                 $('#b6').mouseout(function(){  
        $('#b6').css("background-color", "blue");  
      }); 
      
      
       $('#b7').mouseover(function() { 
                    $('#b7').css("background-color", "aqua"); 
                }); 
                
                 $('#b7').mouseout(function(){  
        $('#b7').css("background-color", "blue");  
      }); 
      
      
      
      
       $('#b8').mouseover(function() { 
                    $('#b8').css("background-color", "aqua"); 
                }); 
                
                 $('#b8').mouseout(function(){  
        $('#b8').css("background-color", "blue");  
      }); 
      
      
       $('#b9').mouseover(function() { 
                    $('#b9').css("background-color", "aqua"); 
                }); 
                
                 $('#b9').mouseout(function(){  
        $('#b9').css("background-color", "blue");  
      }); 
      
      
       $('#b10').mouseover(function() { 
                    $('#b10').css("background-color", "aqua"); 
                }); 
                
                 $('#b10').mouseout(function(){  
        $('#b10').css("background-color", "blue");  
      }); 
      
      
            }); 
             
             
         </script>
          
  

        
        

    

    </head>
    <body id="i">
  
   
   
        
        <br><br><br><br>
            
                <div class="form"> 
            
    <center>
        
        <form method="post"><font color="yellow">12 AM </font><button  class="btn <?= $_SESSION['color']; ?>" style="width: 500px;height: 25px" id="b1" name="id123"></button> <font color="yellow">1 AM<br><br></font></form>
       <font color="yellow"> 1 AM </font> <button onclick="my()" class="btn btn-primary" style="width: 500px;height: 25px" id="b2" ></button> 2 AM<br><br>
       <font color="yellow"> 2 AM </font><button onclick="myF()" class="btn btn-primary" style="width: 500px;height: 25px" id="b3" ></button> 3 AM<br><br>
       <font color="yellow"> 3 AM </font><button onclick="myFu()" class="btn btn-primary" style="width: 500px;height: 25px" id="b4" ></button> 4 AM<br><br>
      <font color="yellow">  4 AM </font><button onclick="myFun()" class="btn btn-primary" style="width: 500px;height: 25px" id="b5" ></button> 5 AM<br><br>
       <font color="yellow"> 5 AM </font><button onclick="myFunc()" class="btn btn-primary" style="width: 500px;height: 25px" id="b6" ></button> 6 AM<br><br>
      <font color="yellow">  6 AM </font><button onclick="myFunct()" class="btn btn-primary" style="width: 500px;height: 25px" id="b7" ></button> 7 AM<br><br>
       <font color="yellow"> 7 AM </font><button onclick="myFuncti()" class="btn btn-primary" style="width: 500px;height: 25px" id="b8" ></button> 8 AM<br><br>
      <font color="yellow">  8 AM </font><button onclick="myFunctio()" class="btn btn-primary" style="width: 500px;height: 25px" id="b9" ></button> 9 AM<br><br>
      <font color="yellow">  9 AM </font><button onclick="myFunction()" class="btn btn-primary" style="width: 500px;height: 25px" id="b10" ></button> 10 AM<br><br>
       
        <p id="demo"></p>
        <p id="demo"></p>
        <p id="demo"></p>
        <p id="demo"></p>  
        <p id="demo"></p>
        <p id="demo"></p>  
        <p id="demo"></p>
        <p id="demo"></p>
        <p id="demo"></p>
        <p id="demo"></p>
        
      
      
<script>
function m() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>12AM-1PM Slot<br></p>";
   document.getElementById("demo").style.color = "red"
}
      


function my() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>1PM-2PM Slot<br></p>";
}
      
      
      
      

function myF() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>2PM-3PM Slot<br></p>";
}
     


function myFu() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>3PM-4PM Slot<br></p>";
}
      
      
      

function myFun() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>4PM-5PM Slot<br></p>";
}
   


function myFunc() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>5PM-6PM Slot<br></p>";
}
      
      
      

function myFunct() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>6PM-7PM Slot<br></p>";
}
      
function myFuncti() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>7PM-8PM Slot<br></p>";
}
     
      
      

function myFunctio() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>8AM-9AM Slot<br></p>";
}
    


function myFunction() {
  document.getElementById("demo").innerHTML = " <p>You Have Selected<br>9AM-10AM Slot<br></p>";
}
      </script>
      
      
      
      
      
      
      
      
    </center>
        </div>
           
        
    </body>
    
</html>