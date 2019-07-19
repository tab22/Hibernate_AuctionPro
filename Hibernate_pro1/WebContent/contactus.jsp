<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
          
         <style>
        #id1{
            font-family: cursive;
            color: #d1ecf1;
        }
        #hr_id{
            
            color:black ;
            	border-bottom: 1px solid #1f1209;
            box-shadow: 0 20px 20px -20px #000;
        }
        input{
            border: solid 2px #000;
        }
       
      body {
/*            background: -webkit-linear-gradient(left, #0072ff, #00c6ff);*/
             background: linear-gradient(45deg, red, blue);
            } 
            h1{
                text-shadow: 2px 2px #000;
            }
            
            input[type=text],[type=textarea],[type=number],[type=email]{
                width: 50%;
                border: 2px solid black;
                border-radius: 4px;
                margin: 8px 0;
                outline: none;
                padding: 8px;
                box-sizing: border-box;
                transition: .3s;
            }  
            
            input[type=text],[type=textarea],[type=number],[type=email]:focus{
                border-color: #000;
                box-shadow: 0 0 8px 0 #000;
                
            }
            .Input1 input[type=text],[type=textarea],[type=number],[type=email]{
                padding-left: 40px;}
            
           .Input1{
                    position: relative;
                    
                } 
                
                .Input1 i{
                    position: absolute;
                    top: 8px; padding: 9px 8px;
                    color:#212529;
                    left: 0;
                }
           
            .Input1 input[type=text],[type=number],[type=email],[type=textarea]:focus+i{color: #212529};
            
            
            
            
        </style> 
          
          
          
</head>
<body>

    <div class="container mt-2">
        <div class="col" id="id1">
            <h1 style="text-align: center;color: #000">Contact Us </h1><br>
            We are always here to help. If you have requirements/queries about our services,
            fill up the contact form below. And we will do our best to reply.. Simply pickup the 
            phone and and give us a call.
            <hr id="hr_id">
            
            
        </div>
    </div>   
    
    <form action="contactusreg.jsp" method="post">

            <div class="container mt-4">
                <form method="post" class="form">
                <div class="row">
                
                
                    <div class="form-group col-7" style="float:left">    
                    
                        <div class="Input1">
                       
                            <i class="fas fa-user fa-lg fa-fw" aria-hidden="true"></i>
                            <input type="text" placeholder="Your Name" class="form-control" name="name">
                        </div>
                        
                         <div class="Input1">
                          
                            <i class="fas fa-envelope fa-lg fa-fw" aria-hidden="true"></i>
                            
                            <input type="email" placeholder="Your Email" class="form-control" name="email">
                        </div>
                       <div class="Input1">
                          
                            
                            <i class="fas fa-phone fa-lg fa-fw" aria-hidden="true"></i>
                            <input type="text" placeholder="Your Contact Number" class="form-control" name="mobile">
                        </div>
                        
                       
                    
                    <div class="Input1">
                    <textarea class="form-control col-12" placeholder="Your Message *" style="width:80%; height: 150px;"   name="message"></textarea>
                    <br>
                   </div>
                    
                    <div>
                         <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                    </div>
                </div>
                        
                    
                    <div class="container mt-4 col-5">
                        <div class="form-group">
                            <b style="color: #d1ecf1"><i class="fas fa-phone fa-fw">Phone- 9822545562</i></b>
                        </div>    
                    <div>
                        <b style="color: #d1ecf1">Address -</b><font style="color: #d1ecf1"> Near Parihar Chowk, Harmony Society, Aundh, Pune.</font><br><br>
                    </div>
                    
                    <div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3782.2753027255835!2d73.8047303143693!3d18.561623072763133!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf3025916151%3A0xc7331a60847367d7!2sWestend+Mall!5e0!3m2!1sen!2sin!4v1555320873615!5m2!1sen!2sin" width="400" height="300" frameborder="0" style="border:0" allowfullscreen>
                            
                        </iframe>
                    </div>
                 </div>
            </div>
        </form>
                </div>     
 
   
               






</form>






</body>
</html>