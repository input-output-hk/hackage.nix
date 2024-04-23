{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amby"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Justin Sermeno";
      maintainer = "Justin Sermeno";
      author = "Justin Sermeno";
      homepage = "https://github.com/jsermeno/amby#readme";
      url = "";
      synopsis = "Statistical data visualization";
      description = "<<https://travis-ci.org/jsermeno/amby.svg?branch=master>>\n<<https://img.shields.io/badge/language-Haskell-blue.svg>>\n<<http://img.shields.io/badge/license-BSD3-brightgreen.svg>>\n\n<<https://cloud.githubusercontent.com/assets/197051/20435959/262da202-ad7c-11e6-99e4-b6348cab0898.png>>\n<<https://cloud.githubusercontent.com/assets/197051/20435962/2796c380-ad7c-11e6-9cc8-0fbc74ba259a.png>>\n<<https://cloud.githubusercontent.com/assets/197051/20435968/2a059e52-ad7c-11e6-8f8d-1fd648dfcf4b.png>>\n\nA statistics visualization library built on top of\n<https://github.com/timbod7/haskell-chart Chart> inspired by\n<https://github.com/mwaskom/seaborn Seaborn>. Amby provides\na high-level interface to quickly display attractive\nvisualizations. Amby also provides tools to display Charts\nfrom both Amby and the Chart package within GHCi.\n\nFor examples visit the\n<https://github.com/jsermeno/amby#readme README>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."pretty-display" or (errorHandler.buildDepError "pretty-display"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
        ];
        buildable = true;
      };
      tests = {
        "amby-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."amby" or (errorHandler.buildDepError "amby"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }