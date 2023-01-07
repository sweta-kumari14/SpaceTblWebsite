<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html data-style-switcher-options="{'changeLogo': false, 'colorPrimary': '#aa68a9', 'colorSecondary': '#e36159', 'colorTertiary': '#2baab1', 'colorQuaternary': '#383f48'}" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta name="keywords" content="Office Space, Rental Agency, Coworking space, Shared office space, Startup community center, shared office space in Pune, coworking office space in Locations, Plug and play office space, Private cabin, Serviced office space, Office On Rent, Virtual Office Space, Meeting Room On rent, Branch Office, New Offices" />
    <meta name="TAYS Business Lounge" content="tblspace.com" />
    <meta name="description" content="TBL Space is the hub of technology and startup community. We provide coworking, shared workspace, private offices, meeting rooms and even free incubator depending on your requirements." />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <title>TBL | CoWorking</title>
    <!--CALL TO ACTION--->
    <style type="text/css">
        .fcb-container {
            background-color: #b56fb4 !important;
            color: #b56fb4 !important;
        }

        .fcb-menus-container, .fcb-menus-container a, .fcb-media-icon .fcb-icon, .fcb-callback, #fcb-success-msg h2 {
            background: #ffffff !important;
            color: #b56fb4 !important;
        }

        #fcb-callback-submit {
            background-color: #b56fb4 !important;
        }

        .fcb-loader-ring:after {
            border-color: #b56fb4 transparent #b56fb4 transparent !important;
        }

        .fcb-marque-icons .fcb-icon {
            color: #b56fb4 !important;
        }
    </style>

    <script type='text/javascript' src='wp-includes/js/jquery/jquery.minaf6c.js?ver=3.6.0' id='jquery-core-js'></script>
    <link rel='stylesheet' href='wp-content/plugins/floating-contact-buttons/assets/css/floating-contact-buttons.min.css' type='text/css' media='all' />
    <link rel='stylesheet' href='wp-content/plugins/floating-contact-buttons/assets/css/custom-icons.minf049.css?ver=6.0' type='text/css' media='all' />

    <script type='text/javascript' src='wp-content/plugins/floating-contact-buttons/assets/js/floating-contact-buttons.minf049.js?ver=6.0' id='fcb-js-js'></script>
    <script type='text/javascript' src='wp-content/plugins/floating-contact-buttons/assets/js/jquery.mask.minf049.js?ver=6.0' id='fcb-mask-js-js'></script>

    <!--END CALL TO ACTION--->


    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon-tbl.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/favicon-tbl.png" />

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no" />

    <!-- Web Fonts  -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light%7CPlayfair+Display:400" rel="stylesheet" type="text/css" />

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="vendor/fontawesome-free/css/all.min.css" />
    <link rel="stylesheet" href="vendor/animate/animate.min.css" />
    <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css" />
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css" />
    <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="css/theme.css" />
    <link rel="stylesheet" href="css/theme-elements.css" />
    <link rel="stylesheet" href="css/theme-blog.css" />
    <link rel="stylesheet" href="css/theme-shop.css" />

    <!-- Current Page CSS -->
    <link rel="stylesheet" href="vendor/rs-plugin/css/settings.css" />
    <link rel="stylesheet" href="vendor/rs-plugin/css/layers.css" />
    <link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css" />

    <!-- Demo CSS -->


    <!-- Skin CSS -->
    <link rel="stylesheet" href="css/skins/skin-corporate-5.css" />
    <script src="master/style-switcher/style.switcher.localstorage.js"></script>

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="css/custom.css" />

    <!-- Head Libs -->
    <script src="vendor/modernizr/modernizr.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script>

        $(document).ready(function () {
            $("#btnsendus").click(function () {
                const name = $("#txtname").val();
                const mob = $("#txtmobile").val();
                const email = $("#txtemail").val();
                const Location = $("#DropDownList1").val();
                const enq = $("#txtmessage").val();
                //validation
                if (name == "" || name == null) {
                    alert("Please enter name");
                    return false;
                } else {
                    alert("Thanks our team will Contact you Soon");
                    $("#formModal").modal("hide");
                }


                const dataToSend = {
                    name: name,
                    mobile: mob,
                    email: email,
                    Location: Location,
                    enqFor: enq
                }
                $.ajax({
                    method: "GET",
                    url: "/SendFeedBackWebService.asmx/SendEmail",
                    data: dataToSend,
                    success: function (res) {
                        console.log(res);
                        if (res == "ok") {
                            $("#formModal").modal('hide');
                            alert("thanks");
                        }
                    },
                    error: function (err) {
                        console.log(err);
                        alert("error");
                    }
                })
            })
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#btnsend2").click(function () {
                const YourName = $("#txtname1").val();
                const MobileNo = $("#txtmobile1").val();
                const YourEmail = $("#txtemail1").val();
                const YourCity = $("#txtcity").val();
                const Writeyourrequirement = $("#txtmessage1").val();
                //validation
                if (YourName == "" || YourName == null) {
                    alert("Please enter name");
                    return false;
                } else {
                    alert("Thanks our team will Contact you Soon");
                    $('#txtname1').val(''); //txtID is textbox ID
                    $('#txtmobile1').val('');
                    $('#txtemail1').val('');
                    $('#txtcity').val('');
                    $('#txtmessage1').val('');

                }
                const dataToSend = {
                    YourName: YourName,
                    MobileNo: MobileNo,
                    YourEmail: YourEmail,
                    YourCity: YourCity,
                    Writeyourrequirement: Writeyourrequirement
                }
                $.ajax({
                    method: "GET",
                    url: "/SendFeedBackWebService.asmx/SendEmail1",
                    data: dataToSend,
                    success: function (res) {
                        console.log(res);
                        if (res == "ok") {
                            $("#formModal").modal('hide');
                            alert("thanks");
                        }
                    },
                    error: function (err) {
                        console.log(err);
                        alert("error");
                    }
                })
            })
        });

    </script>

    <script>
        $(document).ready(function () {
            $("#btnsend3").click(function () {
                const YourName = $("#txtname2").val();
                const MobileNo = $("#txtmobile2").val();
                const YourEmail = $("#txtemail2").val();
                const YourCity = $("#txtcity2").val();
                const YourIndustries = $("#txtindustries").val();
                const YourOfficeSize = $("#txtofficesize").val();


                //validation
                if (YourName == "" || YourName == null) {
                    alert("Please enter name");
                    return false;
                } else {
                    alert("Thanks our team will Contact you Soon");
                    $('#txtname2').val(''); //txtID is textbox ID
                    $('#txtmobile2').val('');
                    $('#txtemail2').val('');
                    $('#txtcity2').val('');
                    $('#txtindustries').val('');
                    $('#txtofficesize').val('');

                }
                const dataToSend = {
                    YourName: YourName,
                    MobileNo: MobileNo,
                    YourEmail: YourEmail,
                    YourCity: YourCity,
                    YourIndustries: YourIndustries,
                    YourOfficeSize: YourOfficeSize
                }
                $.ajax({
                    method: "GET",
                    url: "/SendFeedBackWebService.asmx/SendEmail2",
                    data: dataToSend,
                    success: function (res) {
                        console.log(res);
                        if (res == "ok") {
                            $("#formModal2").modal('hide');
                            alert("thanks");
                        }
                    },
                    error: function (err) {
                        console.log(err);
                        alert("error");
                    }
                })
            })
        });

    </script>


</head>
<body class="loading-overlay-showing" data-plugin-page-transition data-loading-overlay data-plugin-options="{'hideDelay': 500}">
    <form id="form1" runat="server">


        <!--START CALL TO ACTION--->
        <div class="fcb-container">
            <div class="fcb-main-button" style="display: none;">
                <a id="fcb-btn">
                    <div class="fcb-cross-icons">
                        <div class="fcb-marque-icons">
                            <span class="fcb-icon icon-fcb_chat"></span><span class="fcb-icon icon-fcb_whatsapp" style="z-index: 98; animation-delay: 1s"></span><span class="fcb-icon icon-fcb_facebook" style="z-index: 96; animation-delay: 3s"></span><span class="fcb-icon icon-fcb_telegram" style="z-index: 94; animation-delay: 5s"></span><span class="fcb-icon icon-fcb_email" style="z-index: 92; animation-delay: 7s"></span>

                        </div>
                    </div>
                    <div class="fcb-close-menu">
                        <img decoding="async" class="fcb-close-img" src="wp-content/plugins/floating-contact-buttons/assets/images/fcb_close.png" />
                    </div>
                </a>
            </div>
            <div class="fcb-menus-container fcb-scale-transition fcb-scale-out" style="display: none;">
                <a href="https://wa.me/919960672518" target="__blank" class="fcb-menus" id="0"><span class="fcb-media-icon">
                    <span class="fcb-icon icon-fcb_whatsapp"></span></span>
                    <span class="fcb-media-name">Whatsapp</span> </a>
                <a href="mailto:tbl.workspaces@gmail.com" target="__blank" class="fcb-menus" id="6">
                    <span class="fcb-media-icon"><span class="fcb-icon icon-fcb_email"></span></span>
                    <span class="fcb-media-name">Email Us</span> </a>
                <a data-toggle="modal" data-target="#formModal" id="fcb-phone" class="fcb-menus"><span class="fcb-media-icon">
                    <span class="fcb-icon icon-fcb_phone"></span></span>
                    <span class="fcb-media-name">Callback Request</span> </a>
            </div>
        </div>
        <!--END CALL TO ACTION--->
        <div class="loading-overlay">
            <div class="bounce-loader">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>

        <div class="body">
            <!--Header--->
            <header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 120, 'stickyHeaderContainerHeight': 70}">
                <div class="header-body border-top-0">
                    <div class="header-top header-top-borders">
                        <div class="container h-100">
                            <div class="header-row h-100">
                                <div class="header-column justify-content-start">
                                    <div class="header-row">
                                        <div class="dropdown dropdown-style-1 dropdown-corner-left-fix">
                                            <a class="dropdown-toggle text-uppercase text-color-primary" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Select The City
                                            </a>
                                            <div class="dropdown-menu text-color-primary text-uppercase" aria-labelledby="dropdownMenuLink">
                                                <a class="dropdown-item text-1" href="https://pune.tblspace.com/" target="_blank">Pune</a>
                                                <a class="dropdown-item text-1" href="https://ranchi.tblspace.com/" target="_blank">Ranchi</a>

                                                <a class="dropdown-item text-1" data-toggle="modal" data-target="#formModal" href="#">Other locations</a>

                                            </div>
                                        </div>
                                        <nav class="header-nav-top">
                                            <ul class="nav nav-pills">
                                                <li class="nav-item nav-item-borders py-2 px-2 d-none d-sm-inline-flex">
                                                    <a href="https://wa.me/919960672518" target="__blank"><i class="fab fa-whatsapp text-4 text-color-primary" style="top: 0;"></i></a>
                                                </li>

                                                <li class="nav-item nav-item-borders py-2 d-none d-md-inline-flex">
                                                    <a href="mailto:tbl.workspaces@gmail.com"><i class="far fa-envelope text-4 text-color-primary" style="top: 1px;"></i></a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <div class="header-column justify-content-end">
                                    <div class="header-row">
                                        <nav class="header-nav-top">
                                            <ul class="nav nav-pills">
                                                <li class="nav-item nav-item-borders py-2 d-none d-lg-inline-flex">
                                                    <ul class="header-social-icons social-icons d-none px-4 d-sm-block">
                                                        <li class="social-icons-facebook"><a href="https://www.facebook.com/tblspace/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                                        <li class="social-icons-twitter"><a href="https://twitter.com/TBLSpaces" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                                        <li class="social-icons-linkedin"><a href="https://www.linkedin.com/company/tblspace/?originalSubdomain=in" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
                                                        <%--<li class="social-icons-youtube"><a href="https://www.youtube.com/channel/UC2_zO-HrMQ5eLvAM6TQeznQ" target="_blank" title="Youtube"><i class="fab fa-youtube"></i></a></li>--%>
                                                        <li class="social-icons-instagram"><a href="https://www.instagram.com/tblspacepune/?hl=en" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                                                    </ul>
                                                </li>

                                            </ul>
                                            <div class="justify-content-end">
                                                <a href="#" target="_blank" class="btn btn-primary rounded-0 font-weight-bold text-uppercase d-none d-sm-inline-flex align-items-center align-self-stretch px-4" data-toggle="modal" data-target="#formModal">Partner With TBL
                                                </a>
                                            </div>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <!--<div class="header-container container">
                       
                            <div class="header-column">
                                <div class="header-row">
                                    <div class="header-logo">
                                        <a href="index.aspx">
                                            <img alt="TBL" width="227" height="86" data-sticky-width="170" data-sticky-height="62" src="img/logo-tbl-space.png" /></a>
                                    </div>
                                </div>
                            </div>-->    
                            <!-- <div class="header-column justify-content-end">
                                <div class="header-row">
                                    <div class="header-nav header-nav-line header-nav-top-line header-nav-top-line-with-border order-2 order-lg-1">
                                        <div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
                                            <nav class="collapse">
                                                <ul class="nav nav-pills" id="mainNav">
                                                    <li class="dropdown"><a class="dropdown-item text-3 dropdown-toggle active" href="index.aspx">Home</a></li>
                                                    <li class="dropdown"><a class="dropdown-item text-3 dropdown-toggle" href="tbl-coworking.aspx">CO-WORKING</a></li>
                                                    <li><a class="dropdown-item text-3" href="tbl-office-on-rent.aspx">OFFICE ON RENT</a></li>
                                                    <li><a class="dropdown-item text-3 dropdown-toggle" data-toggle="modal" data-target="#formModal" href="#">NEW OFFICES</a></li>

                                                 </ul>
                                             </nav>
                                        </div>
                                       <button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav"><i class="fas fa-bars"></i>
                                        </button>
                                    </div>

                                  <div class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2">
                                        <div class="header-nav-feature header-nav-features-user d-inline-flex mx-2 pr-2 signin" id="headerAccount">
                                            <a href="tel:919960672518" class="header-nav-features-toggle text-4 text-color-primary">
                                                <i class="fas fa-mobile"></i>(+91) 99606 72518
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                      </div>-->


         <nav  class ="navbar navbar-expand-md bg-white navbar-dark ">
		<div class ="container">
			 <a href="index.aspx">
               <img alt="TBL" width="227" height="86" data-sticky-width="170" data-sticky-height="62" src="img/logo-tbl-space.png" /></a>
			<button class="navbar-toggler bg-primary" type="button" data-toggle="collapse" data-target="#collapsenavbar">
				<span class="navbar-toggler-icon "></span>
			</button>
			<div class="collapse navbar-collapse text-center" id="collapsenavbar">
				<ul class="navbar-nav ml-auto ">
					<li class="nav-item">
						<a href="index.aspx" class="nav-link text-color-primary text-2">HOME</a>
					</li>
					<li class="nav-item">
						<a href="tbl-coworking.aspx" class="nav-link text-color-primary text-2">CO-WORKING</a>
					</li><li class="nav-item">
						<a href="tbl-office-on-rent.aspx" class="nav-link text-color-primary text-2">OFFICE ON RENT</a>
					</li><li class="nav-item">
						<a data-toggle="modal" data-target="#formModal" href="#" class="nav-link text-color-primary text-2">NEW OFFICES</a>
					</li>
					
				</ul>
                <div class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2">
                                        <div class="header-nav-feature header-nav-features-user d-inline-flex mx-2 pr-2 signin" id="headerAccount">
                                            <a href="tel:919960672518" class="header-nav-features-toggle text-4 text-color-primary">
                                                <i class="fas fa-mobile"></i>(+91) 99606 72518
                                            </a>

                                        </div>
                                    </div>
			                </div>
             
                        </div>
	</nav>
                    </div>
       </header>

            <div role="main" class="main">
                <!--Model-->
                <div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px; padding: 15px" class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title text-color-primary text-uppercase" id="formModalLabel">TBL Welcomes You!<br />
                                    <span class="text-color-dark text-2">Please fill the form, our team will get back to you soon.</span></h4>

                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">

                                <div class="form-group row align-items-center">
                                    <asp:Label ID="lblname" CssClass="col-sm-3 text-left text-sm-right mb-0" runat="server" Text="Label">Name*</asp:Label>
                                   
                                    <div class="col-sm-9">
                                        <asp:TextBox CssClass="form-control" ID="txtname" runat="server"></asp:TextBox>
                                       
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtname" ControlToValidate="txtname" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group row align-items-center">
                                    <asp:Label ID="lblmob" CssClass="col-sm-3 text-left text-sm-right mb-0" runat="server" Text="Label">Mobile*</asp:Label>
                                   
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtmobile" CssClass="form-control" runat="server"></asp:TextBox>
                                       
                                        <asp:RequiredFieldValidator ControlToValidate="txtmobile" ID="RequiredFieldValidatortxtmobile" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group row align-items-center">
                                    <asp:Label ID="lblemail" CssClass="col-sm-3 text-left text-sm-right mb-0" runat="server" Text="Label">Email*</asp:Label>
                                   
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                                        
                                        <asp:RequiredFieldValidator ControlToValidate="txtemail" ID="RequiredFieldValidatortxtemail" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group col-lg-4">
                                        <asp:Label ID="Label1" runat="server" CssClass="col-sm-6 text-left text-sm-right mb-0" Text="Label">Location</asp:Label>
                                    </div>

                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownList1" class="btn btn-info dropdown-toggle" runat="server">
                                            <asp:ListItem>--Select Location--</asp:ListItem>
                                            <asp:ListItem>Banglore</asp:ListItem>
                                            <asp:ListItem>Pune</asp:ListItem>
                                            <asp:ListItem>Jharkhand</asp:ListItem>
                                            <asp:ListItem>Delhi</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                </div>
                                <div class="form-group row">
                                    <asp:Label ID="lblmsg" CssClass="col-sm-3 text-left text-sm-right mb-0" runat="server" Text="Label">Enquiry For</asp:Label>
                                    
                                    <div class="col-sm-9">
                                      
                                        <asp:TextBox ID="txtmessage" CssClass="form-control" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                                <asp:Button ID="btnsendus" CssClass="btn btn-primary" runat="server" Text="Send Us" />
                                <asp:Label ID="lblMessage" CssClass="text-color-primary" runat="server" Text=""></asp:Label>
                              
                            </div>

                        </div>
                    </div>
                </div>


                <!--Book Office on rent modal-->
                <div class="modal fade" id="formModal2" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px; padding: 15px" class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title text-color-primary text-uppercase" id="formModalLabel1">Book Office Space on Rent!<br />
                                    <span class="text-color-dark text-2">Please fill the form . our team will get back to you soon.</span></h4>

                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">

                                <div class="form-group row align-items-center">
                                    <asp:Label ID="Label16" CssClass="col-sm-3 text-left text-sm-right mb-0" runat="server" Text="Label">Name*</asp:Label>
                                    <%--<label class="col-sm-3 text-left text-sm-right mb-0">Name*</label>--%>
                                    <div class="col-sm-9">
                                        <asp:TextBox CssClass="form-control" ID="txtname2" runat="server"></asp:TextBox>
                                        <%--<input id="" type="text" name="name" class="form-control" placeholder="Type your name..." />--%>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtname2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group row align-items-center">
                                    <asp:Label ID="Label9" CssClass="col-sm-3 text-left text-sm-right mb-0" runat="server" Text="Label">Mobile*</asp:Label>
                                    <%--<label class="col-sm-3 text-left text-sm-right mb-0"></label>--%>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtmobile2" CssClass="form-control" runat="server"></asp:TextBox>
                                        <%--<input id="" type="tel" name="mobile" class="form-control" placeholder="Type your mobile..." />--%>
                                        <asp:RequiredFieldValidator ControlToValidate="txtmobile2" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group row align-items-center">
                                    <asp:Label ID="Label8" CssClass="col-sm-3 text-left text-sm-right mb-0" runat="server" Text="Label">Email*</asp:Label>
                                    <%--<label class="col-sm-3 text-left text-sm-right mb-0"></label>--%>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtemail2" CssClass="form-control" runat="server"></asp:TextBox>
                                        <%--<input id="" type="email" name="email" class="form-control" placeholder="Type your email..." />--%>
                                        <asp:RequiredFieldValidator ControlToValidate="txtemail2" ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group col-lg-4">
                                        <asp:Label ID="Labe20" runat="server" CssClass="col-sm-6 text-left text-sm-right mb-0" Text="Label">Location</asp:Label>
                                    </div>

                                    <div class="form-group">
                                        <asp:DropDownList ID="txtcity2" class="btn btn-info dropdown-toggle" runat="server">
                                            <asp:ListItem>--Select Location--</asp:ListItem>
                                            <asp:ListItem>Banglore</asp:ListItem>
                                            <asp:ListItem>Pune</asp:ListItem>
                                            <asp:ListItem>Jharkhand</asp:ListItem>
                                            <asp:ListItem>Delhi</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>


                                    <div class="form-group col-lg-4">
                                        <asp:Label ID="Labe21" runat="server" CssClass="col-sm-6 text-left text-sm-right mb-0" Text="Industries*"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="txtindustries" class="btn btn-info dropdown-toggle" runat="server">
                                            <asp:ListItem>--Select Industries--</asp:ListItem>
                                            <asp:ListItem>Technology</asp:ListItem>
                                            <asp:ListItem>Consulting</asp:ListItem>
                                            <asp:ListItem>Media And Entertainment</asp:ListItem>
                                            <asp:ListItem>Banking</asp:ListItem>
                                            <asp:ListItem>Fintech</asp:ListItem>
                                            <asp:ListItem>Real Estate</asp:ListItem>
                                            <asp:ListItem>Insurance</asp:ListItem>
                                            <asp:ListItem>Others</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group col-lg-4">

                                        <asp:Label ID="Label22" runat="server" CssClass="col-sm-6 text-left text-sm-right mb-0" Text="Office Size*"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="txtofficesize" class="btn btn-info dropdown-toggle" runat="server">
                                            <asp:ListItem>--Select Office Size--</asp:ListItem>
                                            <asp:ListItem>600-1000 sq feet</asp:ListItem>
                                            <asp:ListItem>1000-2000 sq feet</asp:ListItem>
                                            <asp:ListItem>more than 2000 sq feet</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                                    <asp:Button ID="btnsend3" CssClass="btn btn-primary" runat="server" Text="Book Office Space On Rent" />
                                    <asp:Label ID="Label7" CssClass="text-color-primary" runat="server" Text=""></asp:Label>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- END Form of Book Office On Rent-->

                <!--slider--->
               <div class="slider-container rev_slider_wrapper" style="height: 500px;">
                    <div id="revolutionSlider" class="slider rev_slider" data-version="5.4.8" data-plugin-revolution-slider data-plugin-options="{'delay': 9000, 'gridwidth': 1170, 'gridheight': 700, 'responsiveLevels': [4096,1200,992,500], 'navigation' : {'arrows': { 'enable': false }, 'bullets': {'enable': true, 'style': 'bullets-style-1', 'h_align': 'center', 'v_align': 'bottom', 'space': 7, 'v_offset': 70, 'h_offset': 0}}}">
                        <ul>
                            <li class="slide-overlay" data-transition="fade">
                                <img src="img/tbl-slides/bg.png"
                                    alt=""
                                    data-bgposition="center center"
                                    data-bgfit="cover"
                                    data-bgrepeat="no-repeat"
                                    class="rev-slidebg">

                                <div style="background-color: rgb(204,153,0); opacity: 0.8;"
                                    class="rs-background-video-layer slide-overlay"
                                    data-forcerewind="on"
                                    data-volume="mute"
                                    data-videowidth="100%"
                                    data-videoheight="100%"
                                    data-videomp4="img/tbl-slides/office-space-and-beyond.mp4"
                                    data-videopreload="preload"
                                    data-videoloop="loop"
                                    data-forcecover="1"
                                    data-aspectratio="16:9"
                                    data-autoplay="true"
                                    data-autoplayonlyfirsttime="false"
                                    data-nextslideatend="true">
                                </div>

                                <div class="tp-caption"
                                    data-x="left" data-hoffset="['-115','-115','-115','-185']"
                                    data-y="center" data-voffset="['-110','-110','-110','-135']"
                                    data-start="1000"
                                    data-transform_in="x:[-300%];opacity:0;s:500;"
                                    data-transform_idle="opacity:10;s:500;">
                                    <img src="img/tbl-slides/slide-title-border.png" alt="">
                                </div>

                                <div class="tp-caption text-color-light font-weight-normal"
                                    data-x="left"
                                    data-y="center" data-voffset="['-110','-110','-110','-135']"
                                    data-start="700"
                                    data-fontsize="['22','22','22','40']"
                                    data-lineheight="['25','25','25','45']"
                                    data-transform_in="y:[-50%];opacity:0;s:500;">
                                    Welcome To TBL
                                </div>

                                <div class="tp-caption"
                                    data-x="left" data-hoffset="['115','115','115','185']"
                                    data-y="center" data-voffset="['-110','-110','-110','-135']"
                                    data-start="1000"
                                    data-transform_in="x:[300%];opacity:0;s:500;"
                                    data-transform_idle="opacity:0.2;s:500;">
                                    <img src="img/tbl-slides/slide-title-border.png" alt="">
                                </div>

                                <div class="tp-caption font-weight-extra-bold text-color-light negative-ls-2"
                                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"sX:1.5;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-60','-60','-60','-85']"
                                    data-fontsize="['50','50','50','90']"
                                    data-lineheight="['55','55','55','95']">
                                    Office Space & Beyond
                                </div>

                                <div class="tp-caption font-weight-light text-center"
                                    data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":2000,"split":"chars","splitdelay":0.05,"ease":"Power2.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-10','-10','-10','-25']"
                                    data-fontsize="['18','18','18','50']"
                                    data-lineheight="['29','29','29','40']"
                                    style="color: #b5b5b5;">
                                <strong>    Trusted by over 100+</strong> satisfied customers.
                                </div>

                                <a data-toggle="modal" data-target="#formModal" class="tp-caption btn btn-light-2 btn-outline font-weight-semibold"
                                    data-frames='[{"delay":2500,"speed":2000,"frame":"0","from":"opacity:0;y:50%;","to":"o:1;y:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-hash
                                    data-hash-offset="85"
                                    href="#main"
                                    data-x="left" data-hoffset="0"
                                    data-y="center" data-voffset="['70','70','70','45']"
                                    data-whitespace="nowrap"
                                    data-fontsize="['15','15','15','33']"
                                    data-paddingtop="['15','15','15','40']"
                                    data-paddingright="['45','45','45','110']"
                                    data-paddingbottom="['15','15','15','40']"
                                    data-paddingleft="['45','45','45','110']">GET STARTED NOW!</a>

                            </li>
                            <li class="slide-overlay" data-transition="fade">
                                <img src="img/tbl-slides/blank.gif"
                                    alt=""
                                    data-bgposition="center center"
                                    data-bgfit="cover"
                                    data-bgrepeat="no-repeat"
                                    class="rev-slidebg">

                                <div class="rs-background-video-layer"
                                    data-forcerewind="on"
                                    data-volume="mute"
                                    data-videowidth="100%"
                                    data-videoheight="100%"
                                    data-videomp4="img/tbl-slides/realestate-partners.mp4"
                                    data-videopreload="preload"
                                    data-videoloop="loop"
                                    data-forcecover="1"
                                    data-aspectratio="16:9"
                                    data-autoplay="true"
                                    data-autoplayonlyfirsttime="false"
                                    data-nextslideatend="true">
                                </div>

                                <h1 class="tp-caption font-weight-extra-bold text-color-light negative-ls-2"
                                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"sX:1.5;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-55','-55','-55','-55']"
                                    data-fontsize="['50','50','50','90']"
                                    data-lineheight="['55','55','55','95']"
                                    data-letterspacing="-1">Trusted Commercial Real Estate Partners</h1>

                                <div class="tp-caption font-weight-light text-center"
                                    data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":2000,"split":"chars","splitdelay":0.05,"ease":"Power2.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-5','-5','-5','15']"
                                    data-fontsize="['18','18','18','35']"
                                    data-lineheight="['20','20','20','40']"
                                    style="color: #b5b5b5;">
                                    TBL is a huge success in the of one of the largest CoWorking MarketPlace.
                                </div>

                                <a data-toggle="modal" data-target="#formModal" class="tp-caption btn btn-light-2 btn-outline font-weight-semibold"
                                    data-frames='[{"delay":2500,"speed":2000,"frame":"0","from":"opacity:0;y:50%;","to":"o:1;y:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-hash
                                    data-hash-offset="85"
                                    href="#main"
                                    data-x="left" data-hoffset="0"
                                    data-y="center" data-voffset="['65','65','65','105']"
                                    data-whitespace="nowrap"
                                    data-fontsize="['15','15','15','33']"
                                    data-paddingtop="['15','15','15','40']"
                                    data-paddingright="['45','45','45','110']"
                                    data-paddingbottom="['15','15','15','40']"
                                    data-paddingleft="['45','45','45','110']">Find A Location!</a>

                            </li>
                            <li class="slide-overlay" data-transition="fade">
                                <img src="img/tbl-slides/blank.gif"
                                    alt=""
                                    data-bgposition="center center"
                                    data-bgfit="cover"
                                    data-bgrepeat="no-repeat"
                                    class="rev-slidebg">

                                <div class="rs-background-video-layer"
                                    data-forcerewind="on"
                                    data-volume="mute"
                                    data-videowidth="100%"
                                    data-videoheight="100%"
                                    data-videomp4="img/tbl-slides/virtual-office.mp4"
                                    data-videopreload="preload"
                                    data-videoloop="loop"
                                    data-forcecover="1"
                                    data-aspectratio="16:9"
                                    data-autoplay="true"
                                    data-autoplayonlyfirsttime="false"
                                    data-nextslideatend="true">
                                </div>

                                <h1 class="tp-caption font-weight-extra-bold text-color-light negative-ls-2"
                                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"sX:1.5;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-55','-55','-55','-55']"
                                    data-fontsize="['50','50','50','90']"
                                    data-lineheight="['55','55','55','95']"
                                    data-letterspacing="-1">Get Virtual Office</h1>

                                <div class="tp-caption font-weight-light text-center"
                                    data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":2000,"split":"chars","splitdelay":0.05,"ease":"Power2.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-5','-5','-5','15']"
                                    data-fontsize="['18','18','18','35']"
                                    data-lineheight="['20','20','20','40']"
                                    style="color: #b5b5b5;">
                                    TBL provides steam virtual offices across the country.
                                </div>

                                <a data-toggle="modal" data-target="#formModal2" class="tp-caption btn btn-light-2 btn-outline font-weight-semibold"
                                    data-frames='[{"delay":2500,"speed":2000,"frame":"0","from":"opacity:0;y:50%;","to":"o:1;y:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-hash
                                    data-hash-offset="85"
                                    href="#main"
                                    data-x="left" data-hoffset="0"
                                    data-y="center" data-voffset="['65','65','65','105']"
                                    data-whitespace="nowrap"
                                    data-fontsize="['15','15','15','33']"
                                    data-paddingtop="['15','15','15','40']"
                                    data-paddingright="['45','45','45','110']"
                                    data-paddingbottom="['15','15','15','40']"
                                    data-paddingleft="['45','45','45','110']">Book Office Space on Rent!</a>

                            </li>
                            <li class="slide-overlay" data-transition="fade">
                                <img src="img/tbl-slides/blank.gif"
                                    alt=""
                                    data-bgposition="center center"
                                    data-bgfit="cover"
                                    data-bgrepeat="no-repeat"
                                    class="rev-slidebg">

                                <div class="rs-background-video-layer"
                                    data-forcerewind="on"
                                    data-volume="mute"
                                    data-videowidth="100%"
                                    data-videoheight="100%"
                                    data-videomp4="img/tbl-slides/office-paas.mp4"
                                    data-videopreload="preload"
                                    data-videoloop="loop"
                                    data-forcecover="1"
                                    data-aspectratio="16:9"
                                    data-autoplay="true"
                                    data-autoplayonlyfirsttime="false"
                                    data-nextslideatend="true">
                                </div>

                                <h1 class="tp-caption font-weight-extra-bold text-color-light negative-ls-2"
                                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"sX:1.5;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-55','-55','-55','-55']"
                                    data-fontsize="['50','50','50','90']"
                                    data-lineheight="['55','55','55','95']"
                                    data-letterspacing="-1">Office Pass For Traveler</h1>

                                <div class="tp-caption font-weight-light text-center"
                                    data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":2000,"split":"chars","splitdelay":0.05,"ease":"Power2.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-5','-5','-5','15']"
                                    data-fontsize="['18','18','18','35']"
                                    data-lineheight="['20','20','20','40']"
                                    style="color: #b5b5b5;">
                                    Proin gravida nibh vel velit auctor aliquet.
                                </div>

                                <a data-toggle="modal" data-target="#formModal" class="tp-caption btn btn-light-2 btn-outline font-weight-semibold"
                                    data-frames='[{"delay":2500,"speed":2000,"frame":"0","from":"opacity:0;y:50%;","to":"o:1;y:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-hash
                                    data-hash-offset="85"
                                    href="#main"
                                    data-x="left" data-hoffset="0"
                                    data-y="center" data-voffset="['65','65','65','105']"
                                    data-whitespace="nowrap"
                                    data-fontsize="['15','15','15','33']"
                                    data-paddingtop="['15','15','15','40']"
                                    data-paddingright="['45','45','45','110']"
                                    data-paddingbottom="['15','15','15','40']"
                                    data-paddingleft="['45','45','45','110']">Contact Now!</a>

                            </li>
                            <li class="slide-overlay" data-transition="fade">
                                <img src="img/tbl-slides/blank.gif"
                                    alt=""
                                    data-bgposition="center center"
                                    data-bgfit="cover"
                                    data-bgrepeat="no-repeat"
                                    class="rev-slidebg">

                                <div class="rs-background-video-layer"
                                    data-forcerewind="on"
                                    data-volume="mute"
                                    data-videowidth="100%"
                                    data-videoheight="100%"
                                    data-videomp4="img/tbl-slides/coworking.mp4"
                                    data-videopreload="preload"
                                    data-videoloop="loop"
                                    data-forcecover="1"
                                    data-aspectratio="16:9"
                                    data-autoplay="true"
                                    data-autoplayonlyfirsttime="false"
                                    data-nextslideatend="true">
                                </div>

                                <h1 class="tp-caption font-weight-extra-bold text-color-light negative-ls-2"
                                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"sX:1.5;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-55','-55','-55','-55']"
                                    data-fontsize="['50','50','50','90']"
                                    data-lineheight="['55','55','55','95']"
                                    data-letterspacing="-1">Co-working Space</h1>

                                <div class="tp-caption font-weight-light text-center"
                                    data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":2000,"split":"chars","splitdelay":0.05,"ease":"Power2.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-x="left"
                                    data-y="center" data-voffset="['-5','-5','-5','15']"
                                    data-fontsize="['18','18','18','35']"
                                    data-lineheight="['20','20','20','40']"
                                    style="color: #b5b5b5;">
                                    Proin gravida nibh vel velit auctor aliquet.
                                </div>

                                <a class="tp-caption btn btn-light-2 btn-outline font-weight-semibold"
                                    data-frames='[{"delay":2500,"speed":2000,"frame":"0","from":"opacity:0;y:50%;","to":"o:1;y:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                    data-hash
                                    data-hash-offset="85"
                                    href="tbl-coworking.aspx"
                                    data-x="left" data-hoffset="0"
                                    data-y="center" data-voffset="['65','65','65','105']"
                                    data-whitespace="nowrap"
                                    data-fontsize="['15','15','15','33']"
                                    data-paddingtop="['15','15','15','40']"
                                    data-paddingright="['45','45','45','110']"
                                    data-paddingbottom="['15','15','15','40']"
                                    data-paddingleft="['45','45','45','110']">Book Office Space on Rent!</a>

                            </li>
                        </ul>
                    </div>
             
                 </div>
             

                <div class="slider-contact-form">
                    <div style="padding-top:50px;" class="container">
                        <div class="row justify-content-end">
                            <div class="col-lg-6">
     <div class="slider-contact-form-wrapper bg-primary   rounded p-5 appear-animation" data-appear-animation="fadeInRightShorter"
 data-appear-animation-delay="2000">
                                    <div   style="padding-top:50px;" class="row">
                                        <div class="col text-center">
                                            <h2 class="font-weight-light text-color-light text-6 mb-2"><strong>Enquiry about booking a Co-Working Space !</strong></h2>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">

                                            <div class="form-row">
                                                <div class="form-group col-lg-6">
                                                    <asp:TextBox ID="txtname1" CssClass="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="txtname1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <asp:TextBox ID="txtmobile1" CssClass="form-control" placeholder="Mobile No." runat="server"></asp:TextBox>

                                                    <asp:RequiredFieldValidator ControlToValidate="txtmobile1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-lg-6">
                                                    <asp:TextBox ID="txtemail1" CssClass="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="txtemail1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <asp:DropDownList ID="txtcity" class="btn btn-info dropdown-toggle" placeholder="Your City" runat="server">
                                                        <asp:ListItem>--Select Location--</asp:ListItem>
                                                        <asp:ListItem>Banglore</asp:ListItem>
                                                        <asp:ListItem>Pune</asp:ListItem>
                                                        <asp:ListItem>Jharkhand</asp:ListItem>
                                                        <asp:ListItem>Delhi</asp:ListItem>
                                                        <asp:ListItem></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>

                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col mb-4">
                                                    <asp:TextBox ID="txtmessage1" CssClass="form-control" placeholder="Write your requirement..." TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col text-center">
                                                    <asp:Button ID="btnsend2" CssClass="btn btn-dark px-4 py-3" runat="server" Text="Send Us" />

                                                    <asp:Label ID="lblMessage1" CssClass="text-color-dark" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                        </div>
                    </div>
                </div>
                    



                <hr />
                <!--Premium & Reliable -->
                <section>
                    <div class="container py-4">
                        <div class="row ">
                            <div class="col-lg-4 text-center text-lg-left">
                                <h2 class="font-weight-bold text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                                    <span class="text-5"><span class="text-color-primary alternative-font-2">Premium & Reliable </span>office space designed for you.</span></h2>
                                <h4 class="text-4 line-height-6 font-weight-normal appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="800"><span class="opacity-6">We’ll help you find the right workspace for your business, in the centre of the city or close to home. Corporate, quirky, luxury or budget. Whatever you need, wherever you need it.</span></h4>
                                <a class="btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow mb-5 mb-lg-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal">Book Office for Co-working space<span><i class="fas fa-chevron-right"></i></span></a>
                            </div>


                            <div class="col-lg-8">
                                <div class="appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="500">
                                    <div class="owl-carousel owl-theme scale-0 nav-inside nav-style-1 nav-light mt-2" data-plugin-options="{'items': 1, 'margin': 10, 'nav': true, 'dots': false, 'animateOut': 'fadeOut', 'autoplay': true, 'autoplayTimeout': 6000, 'loop': true}">
                                        <div>
                                            <div class="img-thumbnail border-0 p-0 d-block">
                                                <img class="img-fluid border-radius-0" src="img/tbl-home/office-1.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div>
                                            <div class="img-thumbnail border-0 p-0 d-block">
                                                <img class="img-fluid border-radius-0" src="img/tbl-home/office-2.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div>
                                            <div class="img-thumbnail border-0 p-0 d-block">
                                                <img class="img-fluid border-radius-0" src="img/tbl-home/office-3.jpg" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                <!--Service for your office need-->
                <section class="section bg-color-grey-scale-1 border-0 pt-0 pt-md-5 m-0 appear-animation" data-appear-animation="fadeIn">
                    <div class="container py-6">
                        <div class="row align-items-center justify-content-center justify-content-lg-between pb-5 pb-lg-0">
                            <div class="col-lg-5 text-center text-lg-left">
                                <h2 class="font-weight-bold text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                                    <span class="text-5"><span class="text-color-primary alternative-font-2">Service for your office need, </span>manage your work space your way.</span></h2>
                                <h4 class="text-4 line-height-6 font-weight-normal appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="800"><span class="opacity-6">Your office and desk spaces are key parts of your working environment. It impacts your team's culture, productivity and efficiency, as well as their general wellbeing at work. As well as that, it can influence how you appeal to us.</span></h4>
                                <a class="btn btn-outline btn-rounded btn-primary btn-with-arrow mb-5 mb-lg-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal">Book Office for co-working Space <span><i class="fas fa-chevron-right"></i></span></a>
                            </div>

                            <div class="col-9 col-lg-6 order-1 order-lg-2 scale-3 pb-5 pb-lg-0 mt-0 mt-md-4 mb-5 mb-lg-0">
                                <img class="img-fluid appear-animation" src="img/desktop-device-1.png" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="300" data-plugin-options="{'accY': -400}" alt="">
                            </div>
                        </div>
                    </div>
                </section>
                <hr />

                <!--5+ Cities  -->
                <section>
                    <div style="background-image: url('img/tbl-home/bg-map.png'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;" class="container py-4">
                        <div class="row ">
                            <div class="col-lg-6 text-center text-lg-left">
                                <h2 class="word-rotator letters rotate-3 mb-2 font-weight-bold text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                                    <span class="text-5"><span class="text-color-primary alternative-font-2">TBL Multi Location Coworking at </span><span class="word-rotator-words">
                                        <b class="is-visible">'Pune'</b>
                                        <b>'Ranchi'</b>

                                        <b>'Upcoming...'</b>
                                    </span>!</span></h2>

                                <ul class="list list-icons list-primary list-borders">
                                    <li><i class="fas fa-check"></i>Located in 5+ citiies across the nation.</li>
                                    <li><i class="fas fa-check"></i>Served 100+ happy customers.</li>
                                    <li><i class="fas fa-check"></i>Instant Booking without any brokrage.</li>
                                    <li><i class="fas fa-check"></i>100% Customization work space in your way.</li>
                                    <li><i class="fas fa-check"></i>24/7 customer supports.</li>
                                </ul>

                                <hr />
                                <a class="popup-with-form btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow mb-5 mb-lg-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal">Book Office for Co-working Space  <span><i class="fas fa-chevron-right"></i></span></a>
                                <!-- Form -->

                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="why-choose-us-content">
                                    <div class="content">
                                        <h2 class="text-color-primary text-6">Why Choose Us?</h2>
                                        <h4 class="text-4 line-height-6 font-weight-normal appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="800"><span class="opacity-6">Idea is to as much time as you spend at the office, we create for you a stimulating, healthy and fun work environment.</span></h4>


                                        <div class="col-sm-12">

                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Creative Work Space</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Virtual Office Space</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Meeting Room On Rent</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Office On Rent</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">High Speed Internet</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Plug and play office space</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Support Staff</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Coffee / Tea / Water</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Large Parking</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Security</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Events & Motivation</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Private cabin / Serviced office space</span>
                                            <span class="badge badge-primary text-uppercase mb-2 badge-md">Stationary services- Printer, Scanner, courier etc.</span>
                                        </div>


                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </section>

                <!--Galary--->
                <section class="section bg-color-grey-scale-0 border-0 pb-0 m-0">
                    <div class="container">
                        <div class="row">
                            <div class="col">

                                <div class="text-center text-lg-left">
                                    <h2 class="font-weight-bold text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                                        <span class="text-5"><span class="text-color-primary alternative-font-2">Multi Office, all thrive here... </span></span></h2>


                                    <hr />
                                </div>

                                <div class="lightbox" data-plugin-options="{'delegate': 'a', 'type': 'image', 'gallery': {'enabled': true}, 'mainClass': 'mfp-with-zoom', 'zoom': {'enabled': true, 'duration': 300}}">
                                    <div class="owl-carousel owl-theme stage-margin" data-plugin-options="{'items': 6, 'margin': 10, 'loop': false, 'nav': true, 'dots': false, 'stagePadding': 40}">
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/1.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/1.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/2.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/2.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/3.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/3.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/4.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/4.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/11.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/11.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/12.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/12.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/12.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/12.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/22.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/22.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                        <div>
                                            <a class="img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon" href="img/img-tbl-coworking/33.jpg">
                                                <img class="img-fluid" src="img/img-tbl-coworking/33.jpg" alt="Project Image" />
                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <div style="text-align: center">
                            <a class="popup-with-form btn btn-outline btn-rounded btn-primary text-uppercase btn-with-arrow mb-5 mb-lg-2 appear-animation"
                                data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1100" href="#" data-toggle="modal" data-target="#formModal"><strong>Hurry Up ! Book Your Office Space Now </strong><span><i class="fas fa-chevron-right"></i></span></a>
                        </div>
                    </div>
                </section>

                
                <!--Associates--->
                <div class="container">
                    <div class="row py-1 my-5">
                        <div class="col">
                            <h2 class="font-weight-bold text-5 line-height-2 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="500">
                                <span class="text-5"><span class="text-color-primary alternative-font-2">Our Associates</span> </span></h2>
                            <hr />
                            <div class="owl-carousel owl-theme mb-0" data-plugin-options="{'responsive': {'0': {'items': 1}, '476': {'items': 1}, '768': {'items': 5}, '992': {'items': 7}, '1200': {'items': 7}}, 'autoplay': true, 'autoplayTimeout': 3000, 'dots': false}">
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/1.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/2.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/3.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/4.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/5.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/6.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/7.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/8.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/9.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/10.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/11.png" alt="" />
                                </div>
                                <div>
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/12.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/13.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/14.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/15.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/16.png" alt="" />
                                </div>
                                <div class="px-2">
                                    <img class="img-fluid opacity-2" src="img/tbl-partners/17.png" alt="" />
                                </div>

                            </div>

                        </div>
                    </div>
                </div>


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
                                                        <img src="img/clients/client-1.jpg" class="img-fluid rounded-circle" alt="" />
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
                                                        <img src="img/clients/client-1.jpg" class="img-fluid rounded-circle" alt="" />
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
                                                        <img src="img/clients/client-1.jpg" class="img-fluid rounded-circle" alt="" />
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
                                                        <img src="img/clients/client-1.jpg" class="img-fluid rounded-circle" alt="" />
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
            <!--Footer--->
            <footer id="footer" class="bg-color-quaternary border-top-0">
                <div class="container py-4">
                    <div class="footer-ribbon">
                        <span>Get in Touch</span>
                    </div>
                    <div class="row py-5">
                        <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                            <h5 class="text-3 mb-3 opacity-7">ABOUT</h5>
                            <p class="pr-1 text-color-light">TAYS Business Lounge (TBL Space) Co-Working provides Shared office & Business Center For- Startup | Entrepreneurs |Small Companies |Freelancer |Students. The idea is to offer creative working environments that suit your business.</p>
                            <div class="alert alert-success d-none" id="newsletterSuccess">
                                <strong>Success!</strong> You've been added to our email list.
                            </div>
                            <div class="alert alert-danger d-none" id="newsletterError"></div>
                            <form id="newsletterForm" action="#" method="POST" class="mr-4 mb-3 mb-md-0">
                                <div class="input-group input-group-rounded">
                                    <input class="form-control form-control-sm bg-light" placeholder="Email Address" name="newsletterEmail" id="newsletterEmail" type="text" />
                                    <span class="input-group-append">
                                        <button class="btn btn-light text-color-dark" type="submit"><strong>GO!</strong></button>
                                    </span>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
                            <h5 class="text-3 mb-3 opacity-7">QUICK LINKS</h5>

                            <ul class="list list-icons">
                                <li class="border-0"><i class="fas fa-angle-right text-color-light"></i><a href="tbl-faq.aspx" class="ml-1 text-decoration-none text-color-light">FAQ's</a></li>
                                <li class="border-0"><i class="fas fa-angle-right text-color-light"></i><a href="tbl-events.aspx" class="ml-1 text-decoration-none text-color-light">Events</a></li>
                                <li class="border-0"><i class="fas fa-angle-right text-color-light"></i><a href="#" data-toggle="modal" data-target="#formModal" class="ml-1 text-decoration-none text-color-light">Contact Us</a></li>
                            </ul>

                        </div>
                        <div class="col-md-6 col-lg-3 mb-4 mb-md-0">
                            <h5 class="text-3 mb-3 opacity-7" data-toggle="modal" data-target="#formModal">Contact Us</h5>
                            <ul class="list list-icons list-icons-lg">
                                <li class="mb-1"><i class="far fa-dot-circle text-color-light"></i>
                                    <p class="m-0 text-color-light"><strong>PUNE[HO]-</strong> 9/16/8Laxmi Nagar, near Lexicon kids school, Balewadi Gaon, Balewadi, Pune, Maharashtra 411045.</p>
                                </li>
                                <li class="mb-1"><i class="far fa-dot-circle text-color-light"></i>
                                    <p class="m-0 text-color-light"><strong>RANCHI[BO]-</strong> 806, Mahabir Tower, Mahatma Gandhi Main Rd, Ranchi, Jharkhand 834001.</p>
                                </li>
                                <li class="mb-1"><i class="fas fa-phone text-color-light"></i>
                                    <p class="m-0"><a class="text-color-light" href="tel:919960672518">(+91) 99606 72518</a></p>
                                </li>
                                <!--<li class="mb-1"><i class="far fa-envelope text-color-light"></i><p class="m-0"><a class="text-color-light" href="mailto:tbl.workspaces@gmail.com"></a></p></li>-->
                            </ul>

                        </div>
                        <div class="col-md-6 col-lg-2">
                            <h5 class="text-3 mb-3 opacity-7">FOLLOW US</h5>
                            <ul class="header-social-icons social-icons">
                                <li class="social-icons-facebook"><a href="https://www.facebook.com/tblspace/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                <li class="social-icons-twitter"><a href="https://twitter.com/TBLSpaces" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                <li class="social-icons-linkedin"><a href="https://www.linkedin.com/company/tblspace/?originalSubdomain=in" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
                                <%--<li class="social-icons-youtube"><a href="https://www.youtube.com/channel/UC2_zO-HrMQ5eLvAM6TQeznQ" target="_blank" title="youtube"><i class="fab fa-youtube"></i></a></li>--%>
                                <li class="social-icons-instagram"><a href="https://www.instagram.com/tblspacepune/?hl=en" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright footer-copyright-style-2">
                    <div class="container py-2">
                        <div class="row py-4">
                            <div class="col d-flex align-items-center justify-content-center">
                                <p><a href="www.tblspace.com">TBL Space</a> © Copyright 2022. All Rights Reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>

            </footer>

        </div>

        <!-- Vendor -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/jquery.appear/jquery.appear.min.js"></script>
        <script src="vendor/jquery.easing/jquery.easing.min.js"></script>
        <script src="vendor/jquery.cookie/jquery.cookie.min.js"></script>
        <script src="master/style-switcher/style.switcher.js" id="styleSwitcherScript" data-base-path="" data-skin-src=""></script>
        <script src="vendor/popper/umd/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/common/common.min.js"></script>
        <script src="vendor/jquery.validation/jquery.validate.min.js"></script>
        <script src="vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
        <script src="vendor/jquery.gmap/jquery.gmap.min.js"></script>
        <script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
        <script src="vendor/isotope/jquery.isotope.min.js"></script>
        <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="vendor/vide/jquery.vide.min.js"></script>
        <script src="vendor/vivus/vivus.min.js"></script>

        <!-- Theme Base, Components and Settings -->
        <script src="js/theme.js"></script>

        <!-- Current Page Vendor and Views -->
        <script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

        <!-- Theme Custom -->
        <script src="js/custom.js"></script>

        <!-- Theme Initialization Files -->
        <script src="js/theme.init.js"></script>

        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../../../../www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-42715764-5', 'auto');
            ga('send', 'pageview');
        </script>
        <script src="master/analytics/analytics.js"></script>



    </form>
</body>
</html>
