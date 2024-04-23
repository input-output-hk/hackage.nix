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
      specVersion = "1.18";
      identifier = { name = "hs-gchart"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2020 Deepak Jois <deepak.jois@gmail.com>";
      maintainer = "Tom Ellis";
      author = "Deepak Jois";
      homepage = "http://github.com/deepakjois/hs-gchart";
      url = "";
      synopsis = "Haskell wrapper for the Google Chart API";
      description = "This module is a wrapper around the Google Chart API. It exposes a rich\nset of Haskell data types to specify your chart data, which can then be\nconverted into a URL that generates the PNG image of the chart.\nThis package is very old and not really supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }