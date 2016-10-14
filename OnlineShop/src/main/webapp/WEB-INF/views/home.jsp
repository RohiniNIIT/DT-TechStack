

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
        <!-- Carousel
        ================================================== -->
       
       
        
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide home-image" src="<c:url value="/resources/images/mobiles.jpg" />" alt="First slide">
                     <div class="container">
                        <div class="carousel-caption">
                            <h1>Welcome to Smart Store</h1>
                            <p>Here you can browse and buy Electronic Items.  Order How for Your Amazing New Kit!</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide home-image" src="<c:url value="/resources/images/mobile.jpg" />" alt="Second slide">
                     <div class="container">
                        <div class="carousel-caption">
                            
                            
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide home-image " src="<c:url value="/resources/images/phonee.jpg" />" alt="Third slide">
                      <div class="container">
                        <div class="carousel-caption">
                            
                            <p>Through ups and downs, Somehow I manage to survive in life.</p>
                        </div>
                    </div>
                </div>
            
            <!--  <div class="item">
                    <img class="Fourth-slide home-image" src="<c:url value="/resources/images/Tabs.jpg" />" alt="Fourth slide">
                     <div class="container">
                        <div class="carousel-caption">
                            
                            <p>TABS</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="Fifth-slide home-image" src="<c:url value="/resources/images/a7.jpg" />" alt="Fifth slide">
                     <div class="container">
                        <div class="carousel-caption">
                            
                            
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="sixth-slide home-image" src="<c:url value="/resources/images/a8.jpg" />" alt="Sixth slide">
                     <div class="container">
                        <div class="carousel-caption">
                            
                            
                        </div>
                    </div>
                </div>-->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->

<br><br>

        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Instrument" />" role="button">
                        <img class="img-responsive" width="300" height="500" src="<c:url value="/resources/images/instrument.jpg"/>" alt="Instrument Image" width="100" height="100">
                    </a>

                    <h4>TELEVISION</h4>


                </div>



                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Record" />" role="button">
                        <img class="img-responsive" width="300" height="500"src="<c:url value="/resources/images/record.gif"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h4>SMARTPHONES</h4>
                   

                </div>


                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Accessory" />" role="button">
                        <img class="img-responsive" width="255" height="255"src="<c:url value="/resources/images/Tabs.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h4>TABS</h4>
                    

                </div>
            </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
