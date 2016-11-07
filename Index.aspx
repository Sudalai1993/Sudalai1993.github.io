﻿<!DOCTYPE html>
<html class="ng-scope" ng-app="myyProtofolio" ng-clock>
<head>

    <link rel="shortcut icon" href="/Images/Logo.png" type="image/png">
    <title>TSB UI/UX Dev</title>
    <%--scripts reference--%>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/Angular-Route.js"></script>

    <script src="CSS/Bootstrap/js/bootstrap.min.js"></script>
    <script src="Controllers/App.js"></script>
    <script src="Controllers/NavigationController.js"></script>
    <script src="Controllers/WorksController.js"></script>
    <script src="Controllers/ContactController.js"></script>
    <script src="Controllers/AboutController.js"></script>
    <script src="Controllers/WorkMacOsController.js"></script>
    <script src="Controllers/WorkMyyAppController.js"></script>
    <script src="Controllers/WorkPortfolioController.js"></script>
    <script src="Controllers/WorkWeatherAppController.js"></script>
    <script src="Scripts/NavbarUI.js"></script>

    <%--style sheet reference--%>
    <link href="CSS/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/Main.css" rel="stylesheet" />
    <link href="CSS/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" />
    <link href="CSS/SpinLoader.css" rel="stylesheet" />
</head>
<body>
    <header id="headerMain" class="main-header">
        <div class="header-wrapper" ng-controller="NavigationController">
            <div class="main-logo">
                <img src="Images/Logo.png" />TSB UI/UX Dev
            </div>
            <nav>
                <ul class="main-menu">
                    <li><i class="fa fa-space-shuttle" style="font-size: larger" aria-hidden="true"></i><a href="#About" data-target="#About" ng-click="navigateTo('About')">About</a></li>
                    <li><i class="fa fa-rocket" style="font-size: larger" aria-hidden="true"></i><a data-target="#Works" href="#Works" ng-click="navigateTo('Works')">Work</a></li>
                    <li><i class="fa fa-plane" style="font-size: larger" aria-hidden="true"></i><a data-target="#Contact" href="#Contact" ng-click="navigateTo('Contact')">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <section id="section-1">
        <div class="content-slider">
            <input type="radio" id="banner1" class="sec-1-input" name="banner" checked>
            <input type="radio" id="banner2" class="sec-1-input" name="banner">
            <input type="radio" id="banner3" class="sec-1-input" name="banner">
            <input type="radio" id="banner4" class="sec-1-input" name="banner">
            <div class="slider">
                <div id="top-banner-1" class="banner">
                    <div class="banner-inner-wrapper">
                        <h1>Hey!<br>
                            I'M Sudalai Balaji</h1>
                        <div class="line"></div>
                        <div class="learn-more-button"><a href="#footerArea">Learn More</a></div>
                    </div>
                </div>
                <div id="top-banner-2" class="banner">
                    <div class="banner-inner-wrapper">
                        <h1>I'M a UI/UX
                            <br>
                            developer</h1>
                        <div class="line"></div>
                        <div class="learn-more-button"><a href="#footerArea">Learn More</a></div>
                    </div>
                </div>
                <div id="top-banner-3" class="banner">
                    <div class="banner-inner-wrapper">
                        <h2>I Build</h2>
                        <h1>Awesome Web<br>
                            Apps</h1>
                        <div class="line"></div>
                        <div class="learn-more-button"><a href="#footerArea">Learn More</a></div>
                    </div>
                </div>
                <div id="top-banner-4" class="banner">
                    <div class="banner-inner-wrapper">
                        <h2>Contact me</h2>
                        <br>
                        <i style="font-size: 100px" class='fa fa-facebook'></i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                  <i style="font-size: 100px" class='fa fa-twitter'></i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                  <i style="font-size: 100px" class='fa fa-linkedin'></i>
                        <div class="line"></div>
                        <div class="learn-more-button"><a href="#main-footer">Learn More</a></div>
                    </div>
                </div>
            </div>
            <nav>
                <div class="controls">
                    <label for="banner1"><span class="progressbar"><span class="progressbar-fill"></span></span><span>01</span> Intro</label>
                    <label for="banner2"><span class="progressbar"><span class="progressbar-fill"></span></span><span>02</span> About</label>
                    <label for="banner3"><span class="progressbar"><span class="progressbar-fill"></span></span><span>03</span> Work</label>
                    <label for="banner4"><span class="progressbar"><span class="progressbar-fill"></span></span><span>04</span> Contacts</label>
                </div>
            </nav>
        </div>
    </section>
    <div ng-view=""></div>
    <footer class="footerMain" id="footerArea">
        <p>© Sudalai Balaji Thirumal 2016</p>
        <p>Learn more <a data-target="#About" href="#About" ng-click="navigateTo('About')">about me</a></p>

    </footer>
</body>
</html>
