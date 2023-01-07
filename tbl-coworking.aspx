<%@ Page Title="" Language="C#" MasterPageFile="~/master-tbl.master" AutoEventWireup="true" CodeFile="tbl-coworking.aspx.cs" Inherits="tbl_coworking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div role="main" class="main">
        
        <!--slider--->
        <section class="page-header page-header-classic">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <ul class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active">Co-Working</li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col p-static">
                        <h1 data-title-border>Co-Working</h1>

                    </div>
                </div>
            </div>
        </section>

        <hr />
           <section class="section section-no-background section-height-1 border-0 pb-5 m-0 appear-animation" data-appear-animation="fadeIn">
            <div class="container">
                <h2 class="font-weight-bold text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                    <span class="text-5"><span class="text-color-primary alternative-font-2">Versatile Office for all types of coworking spaces. </span></span></h2>
                <div class="row justify-content-center recent-posts appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200">
                    <div class="col-sm-8 col-md-4 mb-4 mb-md-0">
                        <article>
                            <div class="row">
                                <div class="col">
                                    <a href="#" class="text-decoration-none">
                                        <img src="img/tbl-coworking/coworking-3.jpg" class="img-fluid hover-effect-2 mb-3" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <p class="text-color-primary text-2 mb-1">VIRTUAL OFFICES</p>
                                    <h4 class="line-height-5 ls-0"><strong>₹24000/Year</strong><br />
                                        You may also contact us & discuss. </h4>
                                    <!--<p class="text-color-dark opacity-7 mb-3">Lorem ipsum dolor sit amet, coctetur adipiscing elit.</p>-->

                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-8 col-md-4 mb-4 mb-md-0">
                        <article>
                            <div class="row">
                                <div class="col">
                                    <a href="blog-post.html" class="text-decoration-none">
                                        <img src="img/tbl-coworking/coworking-1.jpg" class="img-fluid hover-effect-2 mb-3" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <p class="text-color-primary text-uppercase text-2 mb-1">Conference Rooms</p>
                                    <h4 class="line-height-5 ls-0"><strong>₹9999/month</strong><br />
                                        [Allowed to use for our existing customers]</h4>
                                    <!--<p class="text-color-dark opacity-7 mb-3">Lorem ipsum dolor sit amet, coctetur adipiscing elit.</p>-->
                                    <a class="btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow mb-5 mb-lg-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal">BOOK CO-WORKING SPACE<span><i class="fas fa-chevron-right"></i></span></a>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-8 col-md-4">
                        <article>
                            <div class="row">
                                <div class="col">
                                    <a href="blog-post.html" class="text-decoration-none">
                                        <img src="img/tbl-coworking/coworking-2.jpg" class="img-fluid hover-effect-2 mb-3" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <p class="text-color-primary text-2 mb-1">FULL TIME OFFICE</p>
                                    <h4 class="line-height-5 ls-0">Please contact us & share your requirement.</h4>
                                    <!--<p class="text-color-dark opacity-7 mb-3">Lorem ipsum dolor sit amet, coctetur adipiscing elit.</p>-->

                                    <!-- <a class="btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow mb-5 mb-lg-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" 
        data-target="#formModal" >BOOK CO-WORKING SPACE <span><i class="fas fa-chevron-right"></i></span></a>  -->

                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-8 col-md-4 mb-4 mb-md-0 py-4">
                        <article>
                            <div class="row">
                                <div class="col">
                                    <a href="#" class="text-decoration-none">
                                        <img src="img/tbl-coworking/coworking-4.jpg" class="img-fluid hover-effect-2 mb-3" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <p class="text-color-primary text-2 mb-1">FLEXI SEATS</p>
                                    <h4 class="line-height-5 ls-0"><strong>₹3999/month</strong><br />
                                        You may also contact us & discuss.</h4>
                                    <!--<p class="text-color-dark opacity-7 mb-3">Lorem ipsum dolor sit amet, coctetur adipiscing elit.</p>-->
                                    <%--<a class="btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow mb-5 mb-lg-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal" data-toggle="modal" data-target="#formModal">Contact Us <span><i class="fas fa-chevron-right"></i></span></a>--%>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-8 col-md-4 mb-4 mb-md-0 py-4">
                        <article>
                            <div class="row">
                                <div class="col">
                                    <a href="blog-post.html" class="text-decoration-none">
                                        <img src="img/tbl-coworking/coworking-5.jpg" class="img-fluid hover-effect-2 mb-3" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <p class="text-color-primary text-uppercase text-2 mb-1">PRIVATE OFFICE</p>
                                    <h4 class="line-height-5 ls-0"><strong>₹9999/month</strong><br />
                                        You may also contact us & discuss.</h4>
                                    <!--<p class="text-color-dark opacity-7 mb-3">Lorem ipsum dolor sit amet, coctetur adipiscing elit.</p>-->
                                    <a class="btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow mb-5 mb-lg-2 appear-animation" data-appear-animation="fadeInRightShorter"
                                        data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal">BOOK CO-WORKING SPACE <span><i class="fas fa-chevron-right"></i></span></a>
                                    <div>
                                    </div>
                        </article>
                    </div>
                    <div class="col-sm-8 col-md-4 py-4">
                        <article>
                            <div class="row">
                                <div class="col">
                                    <a href="blog-post.html" class="text-decoration-none">
                                        <img src="img/tbl-coworking/coworking-6.jpg" class="img-fluid hover-effect-2 mb-3" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <p class="text-color-primary text-2 mb-1">MEETING SPACE</p>
                                    <h4 class="line-height-5 ls-0">Please contact us & share your requirement.</h4>
                                    <!--<p class="text-color-dark opacity-7 mb-3">Lorem ipsum dolor sit amet, coctetur adipiscing elit.</p>-->
                                    <%-- <a class="btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow mb-5 mb-lg-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal" data-toggle="modal" data-target="#formModal">Contact Us <span><i class="fas fa-chevron-right"></i></span></a>--%>
                                </div>
                            </div>
                        </article>
                    </div>
                    <!--a class="btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow col-col-md-6ear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal" >Boodata-toggle="modal" data-target="#formModal"kContact Us n><i class="fas fa-chevron-right"></i></span></a>-->
                </div>
            </div>
        </section>

        <section class="section section-no-border section-height-1 my-0">
            <div class="container">
                <div class="row counters counters-sm text-light">
                    <h2 class="font-weight-bold text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                        <span class="text-5"><span class="text-color-primary alternative-font-2">Take a Virtual Tour. </span></span></h2>

                </div>
                <div style="text-align: center">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/P9FeeEvFQ5E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
        </section>
        <hr />
        <section style="background-image: url('img/tbl-coworking/bg.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;" class="section section-no-border section-height-2 my-0">
            <div style="box-shadow: rgba(0, 0, 0, 0.55) 0px 5px 15px;" class="container">
                <h2 class="font-weight-bold text-color-light text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                    <span class="text-5"><span class="text-color-light alternative-font-2">Feel free to drop us a line and say hi anytime! </span></span></h2>
                <div class="row with-border">

                    <div style="padding-top: 35px; padding-left: 65px" class="col-lg-6">
                        <div class="appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="800">
                            <h4 class="text-color-light mt-2 mb-1">You may also<strong> Get in Touch- </strong></h4>

                            <ul class="text-color-light list list-icons list-icons-style-2 py-2 mt-2">
                                <li><a href="https://wa.me/919960672518" target="__blank"><i class="fab fa-whatsapp top-6 text-color-light"></i><strong class="text-light">Do us a WhatsApp</strong> </a></li>
                                <li><a href="tel:919960672518" target="__blank"><i class="fas fa-phone top-6 text-color-light"></i><strong class="text-light">Call us at anytime</strong> </a></li>
                                <li><a class="text-light" href="mailto:tbl.workspaces@gmail.com"><i class="fas fa-envelope top-6 text-color-light"></i><strong class="text-light">Write us an E-mail</strong> </a></li>
                            </ul>
                            <ul class="header-social-icons social-icons d-none px-4 d-sm-block">
                                <li class="social-icons-facebook"><a href="https://www.facebook.com/tblspace/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                <li class="social-icons-twitter"><a href="https://twitter.com/TBLSpaces" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                <li class="social-icons-linkedin"><a href="https://www.linkedin.com/company/tblspace/?originalSubdomain=in" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
                                <li class="social-icons-youtube"><a href="https://www.youtube.com/channel/UC2_zO-HrMQ5eLvAM6TQeznQ" target="_blank" title="Youtube"><i class="fab fa-youtube"></i></a></li>
                                <li class="social-icons-instagram"><a href="https://www.instagram.com/tblspacepune/?hl=en" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                            </ul>
                            <hr />
                            <!--<p class="font-weight-dark text-color-light text-2 mb-4 opacity-12">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc. Vivamus bibendun magna ex, et faucibus lacus venenatis eget. Phasellus blandit massa enim. Nullam id varius nunc.</p>-->
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!--Galary--->
        <section class="section bg-color-grey-scale-1 border-0 pb-0 m-0">
            <div class="container py-4">
                <div class="row">
                    <div class="col">

                        <div class="text-center text-lg-left">
                            <h2 class="font-weight-bold text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                                <span class="text-5"><span class="text-color-primary alternative-font-2">Multi Office, all thrive here... </span></span></h2>
                            <!--<h4 class="text-4 line-height-6 font-weight-normal appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="800"><span class="opacity-6">Lorem ipsum dolor sit amet, conur adipiscing elit phasellus blandit massa enim adipiscing elit.</span></h4>-->


                            <hr />
                        </div>

                        <div class="lightbox" data-plugin-options="{'delegate': 'a', 'type': 'image', 'gallery': {'enabled': true}, 'mainClass': 'mfp-with-zoom', 'zoom': {'enabled': true, 'duration': 300}}">
                            <div class="owl-carousel owl-theme stage-margin" data-plugin-options="{'items': 6, 'margin': 10, 'loop': false, 'nav': true, 'dots': false, 'stagePadding': 40}">
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/1.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/1.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/2.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/2.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/3.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/3.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/4.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/4.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/11.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/11.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/12.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/12.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/12.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/12.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/22.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/22.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                                <div>
                                    <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/33.jpg">
                                        <img class="img-fluid" src="img/img-tbl-coworking/33.jpg" alt="Project Image"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>


        <!--Partner with us--->
        <section class="bg-color-light py-4 mb-5">
            <div class="container">
                <div class="row">

                    <!--Testimonial--->
                    <div class="col-lg-6 featured-box featured-box-primary text-left mt-0">
                        <div class="box-content">
                            <div class="col appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200">
                                <h4 style="padding-top: 0px" class="text-color-primary font-weight-semibold text-4 text-uppercase mb-3">What Client Say's</h4>
                                <div class="owl-carousel owl-theme nav-bottom rounded-nav mb-0" data-plugin-options="{'items': 1, 'loop': false, 'autoHeight': true}">
                                    <div>
                                        <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                            <div class="testimonial-author">
                                                <img src="img/clients/client-1.jpg" class="img-fluid rounded-circle" alt=""/>
                                            </div>
                                            <blockquote>
                                                <p class="text-3 line-height-4 mb-0">Cool n complete space to work. Tbl space is help us also for connecting New people.</p>
                                            </blockquote>
                                            <div class="testimonial-author">
                                                <p><strong class="font-weight-bold text-2 opacity-10">- Dayanand Sutar, Entrepreneur</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                            <div class="testimonial-author">
                                                <img src="img/clients/client-1.jpg" class="img-fluid rounded-circle" alt=""/>
                                            </div>
                                            <blockquote>
                                                <p class="text-3 line-height-4 mb-0">Good place to work n connect.happy to here with TBLSpace.Thanks to all Tbl team for supporting us.</p>
                                            </blockquote>
                                            <div class="testimonial-author">
                                                <p><strong class="font-weight-bold text-2 opacity-10">- Abhijeet Pote, Entrepreneur</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                            <div class="testimonial-author">
                                                <img src="img/clients/client-1.jpg" class="img-fluid rounded-circle" alt="">
                                            </div>
                                            <blockquote>
                                                <p class="text-3 line-height-4 mb-0">I am member of tbl since 1 year, and feeling good because tbl has most prominent facility to their members. Thanks TBL.</p>
                                            </blockquote>
                                            <div class="testimonial-author">
                                                <p><strong class="font-weight-bold text-2 opacity-10">- Sudhakar Jadhav, Entrepreneur</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                            <div class="testimonial-author">
                                                <img src="img/clients/client-1.jpg" class="img-fluid rounded-circle" alt="">
                                            </div>
                                            <blockquote>
                                                <p class="text-3 line-height-4 mb-0">Warm and friendly environment. Very helpful and attentive to all needs. Wifi and AC excellent.</p>
                                            </blockquote>
                                            <div class="testimonial-author">
                                                <p><strong class="font-weight-bold text-2 opacity-10">- Aniket Deshpande, Entrepreneur</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </section>

    </div>
</asp:Content>

