﻿var WorksController = angular.module("myyProtofolio")
.controller("WorksController", function ($scope, $rootScope) {
    $scope.SpinLoader = true;
    $scope.showSwitch = true;
    $("#switcher").css("transform", "translateX(0)");
    $("#showSwitcher").css("transform", "translateX(-200%)");
    window.setTimeout(function () {
        $scope.$apply(function () {
            $scope.SpinLoader = false;
        });
    }, 2000)

    //Initializing the snow count
    $scope.snowCount = 40;
    $scope.getSnowNumber = function (snowCount) {
        return new Array(snowCount);
    }

    //function to toggle the settings tab
    $scope.toggleSwitch = function () {
        if (!$scope.showSwitch) {
            $("#switcher").css("transform", "translateX(0)");
            $("#showSwitcher").css("transform", "translateX(-200%)");
            
            $scope.showSwitch = true;
        }
        else if ($scope.showSwitch) {
            $("#showSwitcher").css("transform", "translateX(0)");
            $("#switcher").css("transform", "translateX(-200%)");
            $scope.showSwitch = false;
        }
    }

    //function to get a stylesheet and its css

    $scope.getStyleSheet=function(cssName, rule) {
        for (i = 0; i < document.styleSheets.length; i++) {
            if (document.styleSheets[i].href && document.styleSheets[i].href.toString().indexOf(cssName) != -1)
                for (x = 0; x < document.styleSheets[i].rules.length; x++) {
                    if (document.styleSheets[i].rules[x].selectorText && document.styleSheets[i].rules[x].selectorText.toString().indexOf(rule) != -1)
                        return document.styleSheets[i].rules[x];
                }
        }

        return null;
    }


    //function for Changing the theme

    $scope.changeTheme = function (upperColor, lowerColor, outlineShadow, shadow, gradient) {  

        $scope.getStyleSheet('Main', '.main-header').style.color = upperColor;
        $scope.getStyleSheet('Main', '.main-headerScroll').style.backgroundColor = upperColor;
        $scope.getStyleSheet('Main', '.main-header .header-wrapper .main-menu li a').style.color = upperColor;
        $scope.getStyleSheet('Main', '.footerMain').style.backgroundColor = lowerColor;
        $scope.getStyleSheet('Main', '#section-1').style.color = upperColor;
        $scope.getStyleSheet('Main', 'section #services li div').style.color = lowerColor;
        $scope.getStyleSheet('Main', '.WorksUI').style.boxShadow = outlineShadow;
        $scope.getStyleSheet('Main', '.picWorks').style.border = '10px solid ' + upperColor;
        $scope.getStyleSheet('Main', '.info').style.backgroundColor = shadow;
        $scope.getStyleSheet('Main', '.chart__bar').style.background = gradient;
        $scope.getStyleSheet('Main', '#timeline .timeline-item .timeline-content h2').style.backgroundColor = lowerColor;
        $scope.getStyleSheet('Main', '#timeline::before').style.backgroundColor = lowerColor;
        $scope.getStyleSheet('Main', '#timeline .timeline-item .timeline-icon').style.backgroundColor = lowerColor;

    }

})