<!-- final! -->
<!doctype html>
<html lang="en">
  <head>
    <title>Barbershop</title>
    <%@include file="head.jsp" %>
    
  </head>
  <body>
      <div id="page">
          <%@include file="header.jsp" %>
          <div class="intro">
              <div id="welcome">
                  <p>
                      Welcome to <span id="brandName">Clean Cut</span> Barbershop.
                  </p>
              </div>
              <div id="shortInfo">
                  <p>
                    At Clean cut Barbershop, your experience starts as soon as you walk through our doors.
                In an environment that promotes GOOD VIBES ONLY, our efforts are to make 
                you feel comfortable and relaxed. <br/>The smells, the music, the decor - the overall atmosphere 
                is tailored to entice your senses to feel at home. A place where you can enter and express 
                your haircut wishes and feel confident that you will receive exactly what you request.
                </p>
                 </p>    
              </div>
          </div>
          
        <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
              <li data-target="#demo" data-slide-to="0" class="active"></li>
              <li data-target="#demo" data-slide-to="1"></li>
              <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="./img/img1.jpg" >
              </div>
              <div class="carousel-item">
                <img src="./img/img2.jpg" >
              </div>
              <div class="carousel-item">
                <img src="./img/img3.jpg" >
              </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>

        </div>
          
         <div class="about">
             <div class="box item1">
                <h1 id="titleAboutUs">Our Story</h1>
             </div>
             <div class="item">
                 <p>
                     In 2008 our first, full-service, unisex barber shop opened its doors in 
                     Fitchburg. Immediately an attractive hot spot for hair styling and 
                     grooming, we quickly became recognized throughout the area for our 
                     superior level of service. With increasing demand for service, 
                     in 2018 we opened our second location in Leominster where we 
                     have since continued to build our reputation that reflects 
                     professionalism, style and ease.
                 </p>
                 <br/>
                 <p>
                
                 
             </div>
             
             <div class="ourAddress">
                 
             </div>
            
             
         </div>
          

           
          <%@include file="contactForm.jsp" %>
          
          
          <%@include file="footer.jsp" %>
            

          
          
          
      </div>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
